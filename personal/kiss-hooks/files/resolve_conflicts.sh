#!/bin/sh

KISS_CONFICT_FILE=${KISS_CONFICT_DIR:-/usr/share/kiss-conflict}/kiss_preferred.txt

case $1 in
   post-install)
       grep "^$2 " "$KISS_CONFICT_FILE" | kiss a -
       ;;
esac
