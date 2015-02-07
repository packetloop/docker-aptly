#!/bin/bash
set -e

SOURCE_REPO_URI="http://my_repo.com/ my_release"
MIRROR_REPO_NAME="my_repo_name"
SNAP_NAME="my_snap_name-$(date +%Y%m%d%H%M)"
DISTRIB="my_release"

# if [[ $(aptly mirror list | grep -c "\\[${MIRROR_REPO_NAME}\\]: ${SOURCE_REPO_URI}") = "0" ]]; then
#   aptly mirror create $MIRROR_REPO_NAME $SOURCE_REPO_URI
# fi
# aptly mirror update $MIRROR_REPO_NAME
# if [[ $(aptly snapshot list | grep -c "\\[${SNAP_NAME}\\]: Snapshot from mirror \\[${MIRROR_REPO_NAME}\\]: ${SOURCE_REPO_URI}") = "0" ]]; then
#   aptly snapshot create $SNAP_NAME from mirror $MIRROR_REPO_NAME
# fi
# if [[ $(aptly publish list | grep -c "Snapshot from mirror \\[${MIRROR_REPO_NAME}\\]: ${SOURCE_REPO_URI}") = "0" ]]; then
#   aptly publish snapshot $SNAP_NAME
# else
#   aptly publish switch ${DISTRIB} $SNAP_NAME
# fi

exec "$@"
