#!/bin/sh

PKGMANAGER_ALT_CC_DIR=${PKGMANAGER_ALT_CC_DIR:-/usr/share/pkgmanager/compiler}
if [ -z "$PKGMAN_FORCE_CC" ] && grep -q "^$2\$" "$PKGMANAGER_ALT_CC_DIR"/*; then
    case "$TYPE" in
       pre-build)
           echo "Forcing CC"
           export CC=gcc ;;
    esac
fi
