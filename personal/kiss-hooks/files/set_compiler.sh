#!/bin/sh

KISS_ALT_CC_DIR=${KISS_ALT_CC_DIR:-/usr/share/kiss-hooks}
if [ -z "$KISS_DISABLE_COMPILER_CHECK" ] && grep -Rq "^$PKG\$" "$KISS_ALT_CC_DIR"; then
    case $TYPE in
       pre-build) export CC=gcc ;;
       post-build) export CC=${DEFAULT_CC:-cc} ;;
    esac
fi
