#!/bin/sh
case $PKG in
    busybox|curl|git|libressl|linux*|musl)
        case $TYPE in
           pre-build)
                ORIGINAL_CC=$CC
                CC=gcc
           ;;
           post-build)
                CC=$ORIGINAL_CC
               ;;
        esac
esac
