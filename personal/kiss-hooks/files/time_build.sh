#!/bin/sh

case $TYPE in
   pre-build)
       IFS=. read -r _start _ < /proc/uptime
   ;;

   post-build)
       IFS=. read -r _end _ < /proc/uptime

       _s=$((_end - _start))
       _h=$((_s / 60 / 60 % 24))
       _m=$((_s / 60 % 60))

       [ "$_h" = 0 ] || _u="${_u}${_h}h "
       [ "$_m" = 0 ] || _u="${_u}${_m}m "

       log "$PKG" "Build finished in ${_u:-${_s}s}"
       if [ "$_m" -gt 1 ] || [ "$_h" -ne 0 ]; then
           logger -t kiss -i "Long build for $PKG: ${_s}s"
           mkdir -p ~/.local/share/kiss/
           echo "${_s}s $PKG" >> ~/.local/share/kiss/long_build.log
       fi
   ;;
esac

