#!/bin/sh

if [ $TYPE = "post-build" ]; then
        rm -rf "$DEST/usr/share/gettext" \
               "$DEST/usr/share/polkit-1" \
               "$DEST/usr/share/locale" \
               "$DEST/usr/share/info"
fi
