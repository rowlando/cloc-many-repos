#!/bin/bash
TEMP_GIT_REPOS_DIR=repos
TEMP_REPORTS_DIR=reports
mkdir -p "$TEMP_REPORTS_DIR"

# Delete existing reports
rm $TEMP_REPORTS_DIR/*

cd $TEMP_GIT_REPOS_DIR
while read repo; do
  pwd
  cd ${repo}
  cloc --vcs git --out "../../$TEMP_REPORTS_DIR/$line"
  cd ..
done < /dev/stdin
