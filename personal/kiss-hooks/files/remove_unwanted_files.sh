#!/bin/sh

if [ "$1" = "post-build" ]; then

        rm -rf "$3/etc/sv" \
               "$3/usr/share/gettext" \
               "$3/usr/share/polkit-1" \
               "$3/usr/share/locale" \
               "$3/usr/share/info"
fi
