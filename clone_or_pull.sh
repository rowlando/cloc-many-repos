#!/bin/bash

GIT_REPO="$1"
GIT_URL="git@github.com:ministryofjustice/$GIT_REPO.git"

# Clone or pull latest
if [ ! -d "$GIT_REPO" ]; then
  git clone $GIT_URL
else
  git -C "$GIT_REPO" pull
fi
