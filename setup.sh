# Remind the user to install dependencies, if they haven't already

# Don't mess with the CNAME File!!!!
git update-index --skip-worktree CNAME

# Tell Git to ignore _config_local.yml - so we can change whatever we want.
git update-index --skip-worktree _config_local.yml

# Get the Docs
git submodule update --init

# Add Staging remote & fetch all changes from both remotes
git remote add staging https://github.com/pgpconference/staging.git
git fetch --all

# Create and checkout local staging branch
git checkout -b staging
# Tell staging to track Remote staging:gh-pages
git branch -u staging/gh-pages

# Pull any changes for the new branch
git pull --all

# set `push.default` to always have staging push to staging:gh-pages.
git config push.default upstream
