# Don't mess with the CNAME File!!!!
git update-index --skip-worktree CNAME

# Add Staging remote & fetch all changes from both remotes
git remote add staging https://github.com/pgpconference/staging.git
git fetch --all

# Create and checkout local staging branch
git checkout -b staging
# Tell staging to track Remote staging:gh-pages
gb -u staging/gh-pages

# Pull any changes for the new branch
git pull

# set `push.default` to always have staging push to staging:gh-pages.
git config push.default upstream
