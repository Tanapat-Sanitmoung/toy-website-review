# Fetch updates from the remote, including information about deleted branches
git fetch --prune

# Automatically delete local branches that were deleted on the remote
git branch -vv | grep ': gone]' | awk '{print $1}' | xargs -r git branch -d