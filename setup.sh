# Don't mess with the CNAME File!!!!

# Add Staging remote & Pull all of the branches
git remote add staging https://github.com/pgpconference/staging.git
git checkout -b staging
git fetch --all
gb -u staging/gh-pages
git pull

git update-index --skip-worktree CNAME
# Create and checkout local staging branch
# Tell staging to track Remote staging:gh-pages
# set `push.default` to always have staging push to staging:gh-pages.
git config push.default upstream
