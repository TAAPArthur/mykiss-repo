#!/bin/sh

case "$TYPE" in
   pre-build)
        PKGMANAGER_ALT_CC_DIR=${PKGMANAGER_ALT_CC_DIR:-/usr/share/pkgmanager/compiler}
        if grep -q "^$2\$" "$PKGMANAGER_ALT_CC_DIR"/* ; then
               echo "Forcing CC=${ALT_CC:-gcc}"
               export CC="${ALT_CC:-gcc}"
        fi
        ;;
esac
