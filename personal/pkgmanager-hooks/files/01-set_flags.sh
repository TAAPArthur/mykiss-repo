#!/bin/sh

if [ "$TYPE" = "pre-build" ]; then
    PKGMANAGER_FLAGS_DIR=${PKGMANAGER_FLAGS_DIR:-/usr/share/pkgmanager/flags/}
    if [ -d "$PKGMANAGER_FLAGS_DIR" ]; then
        for flag in "$PKGMANAGER_FLAGS_DIR"/*; do
            if grep -q "$PKG" "$flag"; then
                flag="$(basename "$flag")"
                export LDFLAGS="-${flag%_flag.txt} $LDFLAGS"
            fi
        done
    fi
fi
