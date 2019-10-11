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

7.
