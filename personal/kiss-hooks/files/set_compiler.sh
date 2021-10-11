#!/bin/sh

KISS_ALT_CC_DIR=${KISS_ALT_CC_DIR:-/usr/share/kiss-hooks}
if [ -z "$KISS_DISABLE_COMPILER_CHECK" ] && grep -Rq "^$2\$" "$KISS_ALT_CC_DIR"; then
    case "$1" in
       pre-build) export CC=gcc ;;
       post-build) export CC=${DEFAULT_CC:-cc} ;;
    esac
fi
