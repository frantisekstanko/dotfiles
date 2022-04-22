#!/bin/bash

redshift=3500
brightness=25

redshift -P -O "$redshift"
brightnessctl set "${brightness}%"

mkdir /tmpfs/redshift/

echo "$redshift" > /tmpfs/redshift/value

dbus-update-activation-environment --systemd DISPLAY

if [ -f /usr/bin/gnome-keyring-daemon ]; then
  eval "$(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)"
  export SSH_AUTH_SOCK
fi

nm-applet &

exec i3
