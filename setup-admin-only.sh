# Don't mess with the CNAME File!!!!
git update-index --skip-worktree CNAME

# Add Staging remote & fetch all changes from both remotes
git remote add staging https://github.com/pgpconference/staging.git
git remote add admin https://github.com/pgpconference/staging.git

git fetch --all
git checkout -b staging

# Remove master branch b/c there's no point in having it
git branch -d master

# Create and checkout local staging branch
git checkout -b staging
# Tell staging to track Remote staging:gh-pages
gb -u staging/staging

# git checkout -b gh-pages
# Tell gh-pages to track Remote staging:gh-pages
# gb -u staging/gh-pages

# Pull any changes for the new branch
git pull

# Remove any lingering traces of master and gh-pages branches
git fetch --prune

# set `push.default` to always have staging push to staging:gh-pages.
git config push.default upstream
