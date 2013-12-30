#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice

wmname LG3D
xsetroot -cursor_name left_ptr
xset -b
#feh --bg-scale ~/images/creative/hosts.jpg
#xcompmgr &

# TODO MAKEPKG:
#/home/az/bin/checkbatteryd &
# ---
compton &
/usr/bin/start-pulseaudio-x11 &
#setxkbmap -layout us,ru
setxkbmap -option terminate:ctrl_alt_bksp

#trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 16 --tint 0x4B4B4B --heighttype  pixel --height 23 --padding 1 --margin 0 &
trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --width 16 --transparent true --tint 0x858585 --heighttype  pixel --height 23 --padding 1 --margin 0 &

dunst &
#dunst  -key ctrl+n -fn '-*-terminus-*-*-*-*-17-*-*-*-*-*-*-*' \
  #-nb '#333' -lb '#333' -cb '#333' -nf '#ccc' -lf '#aaa' -cf '#E396C1' \
  #-geometry 0x20-0+24 &

xmenud -t &
#volti &
pasystray &
blueman-applet &
clipit &
goldendict &
gvim &
firefox &
chromium &

# SSH & GNOME KEYRING
#source /etc/X11/xinit/xinitrc.d/30-dbus
#eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
#export SSH_AUTH_SOCK
#export GPG_AGENT_INFO
#export GNOME_KEYRING_CONTROL
#export GNOME_KEYRING_PID

#source /etc/X11/xinit/xinirc.d/*
source /etc/X11/xinit/xinitrc.d/30-dbus
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK

# XMONAD

xmonad
