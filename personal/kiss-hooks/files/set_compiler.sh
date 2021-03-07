#!/bin/sh

KISS_ALT_CC_FILE=${KISS_ALT_CC_FILE:-/usr/share/kiss-hooks/kiss_set_compiler.txt}
if [ -z "$KISS_DISABLE_COMPILER_CHECK" ] && grep -q $PKG $KISS_ALT_CC_FILE; then
    case $TYPE in
       pre-build) CC=gcc ;;
       post-build) CC=${DEFAULT_CC:-cc} ;;
    esac
fi
