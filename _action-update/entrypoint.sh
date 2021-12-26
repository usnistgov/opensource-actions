#!/bin/sh -l

set -eu
. /opt/venv/bin/activate

# Check hub installation
hub version

# Requires BRANCH_NAME, BOT_USER, BOT_TOKEN to be included by workflow
export GITHUB_API_TOKEN=$BOT_TOKEN

ACT_LOG_PATH=_explore/LAST_MASTER_UPDATE.txt
ACT_INPUT_PATH=_explore
ACT_DATA_PATH=explore/github-data

DATA_TIMESTAMP=$(date -u "+%F-%H")
CLONE_CUTOFF=$(date -u "+%F" -d "7 days ago")

# Configure git + hub
git config --global user.name "${BOT_USER}"
git config --global user.email "${BOT_USER}@users.noreply.github.com"
git config --global hub.protocol https

git config --global user

exit 0
