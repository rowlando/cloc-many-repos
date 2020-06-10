#!/bin/bash
TEMP_GIT_REPOS_DIR=repos
mkdir -p "$TEMP_GIT_REPOS_DIR"
cd "$TEMP_GIT_REPOS_DIR"

# clone repos
while read line; do
  ../clone_or_pull.sh ${line}
done < /dev/stdin
