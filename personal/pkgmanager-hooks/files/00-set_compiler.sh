#!/bin/sh

PKGMANAGER_ALT_CC_DIR=${PKGMANAGER_ALT_CC_DIR:-/usr/share/pkgmanager/compiler}
if [ -z "$PKGMANAGER_DISABLE_COMPILER_CHECK" ] && grep -q "^$2\$" "$PKGMANAGER_ALT_CC_DIR"/*; then
    case "$TYPE" in
       pre-build) export CC=gcc ;;
    esac
fi
