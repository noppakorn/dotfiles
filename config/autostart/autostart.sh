#!/bin/sh
# Startup program

# xset -dpms s off
xautolock -notify 30 -notifier "notify-send -u critical -t 10000 'LOCKING in 30s'" -time 10 -locker "systemctl suspend" -corners "--00" &

setxkbmap -model pc105 -layout us,th -option grp:win_space_toggle -option caps:escape &

lxqt-policykit-agent &
picom --experimental-backends &
parcellite &
autorandr --change
feh --bg-fill ~/Pictures/beautiful-morning-minimal-4k-if.jpg
flameshot &

(sleep 5 && /home/noppakorn/map_touchscreen.sh) &
