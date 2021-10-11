#!/bin/sh
REPO_DIR=/etc/repo
MY_REPO_DIR=${MY_REPO_DIR:-$REPO_DIR/mykiss-repo}
export KISS_PATH=$MY_REPO_DIR/personal:$MY_REPO_DIR/forks:$MY_REPO_DIR/prebuilt
KISS_PATH=$KISS_PATH:$MY_REPO_DIR/community:$MY_REPO_DIR/extra
KISS_PATH=$KISS_PATH:$MY_REPO_DIR/fallback
KISS_PATH=$KISS_PATH:$MY_REPO_DIR/meta_packages
KISS_PATH=$KISS_PATH:$REPO_DIR/repo/core:$REPO_DIR/repo/extra:$REPO_DIR/community/community
KISS_PATH=$KISS_PATH:$REPO_DIR/kiss-xorg/xorg:$REPO_DIR/kiss-xorg/extra:$REPO_DIR/kiss-xorg/community
KISS_PATH=$KISS_PATH:$MY_REPO_DIR/nonfree

export KISS_TMPDIR=/tmp/kiss
export KISS_DEPEND_HOOK="sed -e s/libjpeg-turbo/libjpeg/ -e s/openssl/libressl/"
