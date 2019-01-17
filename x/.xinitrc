#!/bin/sh
[ -f ~/.Xmodmap ] && xmodmap ~/.Xmodmap
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

wal -R

xset r rate 270 30

exec i3
