# GET Repo - Process

## Notes to Self

1. Amalgamate into a bash script
2. Check/Fix Line-Endings for entire project

## Setup

1. Clone Repo & cd into repo dir
`git clone https://github.com/pgpconference/pgpconference.git`

If you want to give the folder a different local name:
`git clone https://github.com/pgpconference/pgpconference.git staging-pgp`

2. **Important:** tell Git to ignore any changes to the CNAME file: `git update-index --skip-worktree CNAME`. This is **absolutely essential** to the setup. Otherwise, the CNAME file will constantly cause havoc between the staging and production sites

If for some reason, you *do* need to edit the CNAME, you would:

```sh
git update-index --no-skip-worktree CNAME

# Make your changes, and then:
git commit CNAME -m "What/Why CNAME was changed"
git push staging remote/branch

# Tell git to ignore CNAME again
git update-index --skip-worktree CNAME
```

3. Add Staging Remote & Fetch

```bash
git remote add staging https://github.com/pgpglobal/staging.git
git fetch staging
```
4. Create and checkout local staging branch
  `gco -b staging`
5. Tell staging to track Remote staging:gh-pages (note: you must currently be on the staging branch for this to work)
  `gb -u staging/gh-pages`
6. Optional: set `push.default` to always have staging push to staging:gh-pages.

```bash
git config push.default upstream
```

If you don't do this, then you'll have to do the following:

```bash
# To push (local) staging to (remote) staging/gh-pages
git push staging HEAD:gh-pages

# To push (local) staging to (remote) staging/staging
git push staging HEAD
```

## Editing

Now that we're set up, we can work on the changes locally, push them to staging, and then once all is good, push to the production site.

1. Run `git pull --all` to pull in all the changes for the branches currently on your local environment
2. Create a branch for the feature you're working on. Ex: if you're working on a post, you might type `git checkout -b abbrev-post-name`. If you're making changes to the menu, you might type `git checkout -b luna-nav-menu` or `nav-menu-fix`, etc.
3. Once you've made your changes, run `bundle exec jekyll serve` to test it out locally
4. If everything looks good, then switch to `staging`, merge the new changes, and push to `staging/gh-pages`. Example:

```bash

# Let's say we named our branch new-feature

# Go back to the main staging branch
gco -b staging

# Bring in the new changes
git merge new-feature

# Push the changes to the staging site.
# If you set push.default earlier, then:
git push

# Otherwise:
git push staging HEAD:gh-pages
```

### Alternate Workflow

**Note:** If you think you're going to have multiple people working on new staging features at the same time, and are worried about running into conflicts, then instead you can do as follows:

1. Make the new feature branch `gco -b new-feature`
2. Make your changes
3. Test locally via `bundle exec jekyll serve`
4. Push the `new-feature` branch to the remote staging repo
```bash

# Make the new branch
gco -b new-feature

# Make your changes
```
