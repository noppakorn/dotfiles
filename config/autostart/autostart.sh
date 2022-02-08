#!/bin/sh
# Startup program

xset -dpms s off

setxkbmap -model pc105 -layout us,th -option grp:win_space_toggle -option caps:escape &

lxqt-policykit-agent &
picom --experimental-backends &
parcellite &
autorandr --change
feh --bg-fill ~/Pictures/beautiful-morning-minimal-4k-if.jpg
flameshot &

# export PATH=~/.local/share/gem/ruby/3.0.0/bin:$PATH
# ~/.local/share/gem/ruby/3.0.0/bin/fusuma --config /home/noppakorn/.config/fusuma/config.yml -d &
(sleep 5 && /home/noppakorn/map_touchscreen.sh) &
