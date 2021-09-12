#!/bin/sh
# Startup program

xset -dpms s off
#xss-lock -- slock &
#xautolock -time 10 -locker "slock" &

setxkbmap -option caps:escape
setxkbmap -model pc105 -layout us,th -option grp:win_space_toggle &

lxqt-policykit-agent &
picom --experimental-backends --no-fading-openclose &
dunst &
i3-battery-popup -n -L 20 -t 1m -s /usr/share/sounds/gnome/default/alerts/bark.ogg &
parcellite &
autorandr --change && feh --bg-fill ~/Pictures/white-sky-1040473.jpg &

/home/noppakorn/.local/share/gem/ruby/3.0.0/bin/fusuma --config /home/noppakorn/.config/fusuma/config.yml -d &
/home/noppakorn/suckless/dwm-bar/dwm_bar.sh &
/home/noppakorn/map_touchscreen.sh &
