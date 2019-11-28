# Don't mess with the CNAME File!!!!
git update-index --skip-worktree CNAME

# Add Staging remote & fetch all changes from both remotes
git remote add staging https://github.com/pgpconference/staging.git
# git remote remove origin
git fetch --all
git checkout -b staging
git branch -d gh-pages master

# Create and checkout local staging branch
git checkout -b staging
# Tell staging to track Remote staging:gh-pages
gb -u staging/staging

# Pull any changes for the new branch
git pull

# Remove any lingering traces of master and gh-pages branches
git fetch --prune

# set `push.default` to always have staging push to staging:gh-pages.
git config push.default upstream
