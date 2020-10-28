#!/bin/sh
ALT_USER="untrusted"
if [ -z $USER ] || [ $USER  == "root" ]; then
    USER=arthur
fi
if ! grep -q $USER: etc/passwd; then
    echo "$USER:x:1:$USER"                              >> etc/group
    echo "$USER:::$USER"                                >> etc/gshadow
    echo "$USER:x:1:1::/home/$USER:/bin/bash"           >> etc/passwd
    echo "$USER::::::::"                                >> etc/shadow
    mkdir -p "/home/$USER"
    chown 1:1 "/home/$USER"
fi

if ! grep -q $ALT_USER: etc/passwd; then
    echo "$ALT_USER:::$ALT_USER"                          >> etc/gshadow
    echo "$ALT_USER:x:2:2::/home/$ALT_USER:/bin/nologin"  >> etc/passwd
    echo "$ALT_USER::::::::"                              >> etc/shadow
    echo "$ALT_USER:x:2:$ALT_USER"                        >> etc/group
    mkdir -p "/home/$ALT_USER"
    chown 2:2 "/home/$ALT_USER"
fi
