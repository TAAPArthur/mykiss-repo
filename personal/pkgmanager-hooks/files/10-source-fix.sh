#!/bin/sh


if [ "$TYPE" = post-extract ]; then
    case "$PKG" in
        binutils)
            sed -i "s/defined(__GLIBC__)/defined(__TINYC__) || &/" ./include/plugin-api.h
            ;;
        curl)
            sed -i "s/__builtin_ia32_pause()//g" lib/easy_lock.h
            ;;
        iptables)
            sed -i "-e s/install -pm/install -m/" -e "/^AM_DEPFLAGS/d" extensions/GNUmakefile.in
            ;;
        jq)
            sed -i "s/#ifdef __GNUC__/#if 1/" src/jv.h
            ;;
        libdrm)
            sed -i "s/defined(__NetBSD__)/1 || defined(__NetBSD__)/" xf86atomic.h
            ;;
        libepoxy)
            #find . -type f -exec sed -i "s/__GNUC__/__TINYC__/" {} \+
            ;;
        libinput)
            sed -i "/link_args : version_flag,/d" meson.build
            ;;
        ncurses)
            find . -name configure -exec sed -i "s/-stats,-lc//g" {} \+
            ;;

        tree)
            sed -i "/CC=/d" Makefile
            ;;
    esac

elif [ "$TYPE" = pre-build ]; then
    case "$PKG" in
        abduco|dash|mqbus|myinit|ncdu|sue|tree)
            export LDFLAGS=-static
            ;;
        jq)
            # WIP
            sed -i "s/configure/configure --disable-shared --enable-static /" "$METADATA_DIR/build"
            ;;
        keyutils)
            # WIP
            sed -i "s/make/make NO_SOLIB=1/" "$METADATA_DIR/build"
            ;;
        libnl)
            # WIP
            sed -i "s/--disable-static/--disable-shared/" "$METADATA_DIR/build"
            ;;
        pciutils)
            # WIP
            sed -i "s/shared in yes no/shared in no/" "$METADATA_DIR/build"
            ;;
    esac
fi
