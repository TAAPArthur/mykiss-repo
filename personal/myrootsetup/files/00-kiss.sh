#!/bin/sh
REPO_DIR=/etc/repo
MY_REPO_DIR=$REPO_DIR/mykiss-repo
export KISS_PATH=$MY_REPO_DIR/personal:$MY_REPO_DIR/forks:$MY_REPO_DIR/prebuilt:$MY_REPO_DIR/ban
KISS_PATH=$KISS_PATH:$MY_REPO_DIR/extra:$MY_REPO_DIR/python
KISS_PATH=$KISS_PATH:$MY_REPO_DIR/fallback
KISS_PATH=$KISS_PATH:$MY_REPO_DIR/meta_packages
KISS_PATH=$KISS_PATH:$REPO_DIR/repo/core:$REPO_DIR/repo/extra:$REPO_DIR/repo/xorg:$REPO_DIR/community/community
KISS_PATH=$KISS_PATH:$MY_REPO_DIR/nonfree
export KISS_PATH_ORIGINAL=$KISS_PATH

export KISS_TMPDIR=/tmp/kiss
export KISS_DEPEND_HOOK="sed s/libjpeg-turbo/libjpeg/"
