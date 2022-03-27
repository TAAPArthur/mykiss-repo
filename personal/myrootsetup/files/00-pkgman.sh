#!/bin/sh
REPO_DIR=/etc/repo
MY_REPO_DIR=${MY_REPO_DIR:-$REPO_DIR/mykiss-repo}
export PKGMAN_PATH="$MY_REPO_DIR/personal:$MY_REPO_DIR/forks:$MY_REPO_DIR/prebuilt"
PKGMAN_PATH="$PKGMAN_PATH:$MY_REPO_DIR/community:$MY_REPO_DIR/extra"
PKGMAN_PATH="$PKGMAN_PATH:$MY_REPO_DIR/fallback"
PKGMAN_PATH="$PKGMAN_PATH:$MY_REPO_DIR/meta_packages"
PKGMAN_PATH="$PKGMAN_PATH:$REPO_DIR/kiss-xorg/xorg:$REPO_DIR/kiss-xorg/extra:$REPO_DIR/kiss-xorg/community"
PKGMAN_PATH="$PKGMAN_PATH:$REPO_DIR/repo/core:$REPO_DIR/repo/extra:$REPO_DIR/community/community"
PKGMAN_PATH="$PKGMAN_PATH:$MY_REPO_DIR/nonfree"
