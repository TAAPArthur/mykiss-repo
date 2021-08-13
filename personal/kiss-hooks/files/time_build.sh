#!/bin/sh

case $TYPE in
   pre-build)
       IFS=. read -r _start _ < /proc/uptime
   ;;

   post-build)
       IFS=. read -r _end _ < /proc/uptime
       (
       unset u
       s=$((_end - _start))
       h=$((s / 60 / 60 % 24))
       m=$((s / 60 % 60))

       [ "$h" = 0 ] || u="$u${h}h "
       [ "$m" = 0 ] || u="$u${m}m "

       log "$PKG" "Build finished in ${u:-${s}s}"
       if [ "$s" -gt 240 ]; then
           logger -t kiss -i "Long build for $PKG: ${s}s"
           mkdir -p ~/.local/share/kiss/
           echo "${s}s $PKG" >> ~/.local/share/kiss/long_build.log
       fi
       )
   ;;
esac

