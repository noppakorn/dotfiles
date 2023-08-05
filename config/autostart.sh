#!/bin/sh
# Startup program

# Keyboard Mapping
setxkbmap -model pc105 -layout us,th -option grp:win_space_toggle -option caps:escape -option compose:menu &

# Do not turn off display
# xset -dpms s off

## Lockscreen
# Update betterlockscreen cache
betterlockscreen -u ~/Pictures/beautiful-morning-minimal-4k-if.jpg --fx &
# xidlehook --not-when-fullscreen --not-when-audio --timer 830 "notify-send -u critical -t 10000 'LOCKING in 30s'" "" --timer 30 "systemctl suspend" "" &
xautolock -corners "-000" -time 15 -notify 60 -notifier "notify-send -u critical -t 60000 'LOCKING in 60s'" -locker "systemctl suspend" &
xss-lock --transfer-sleep-lock -- betterlockscreen -l &

# Startup Programs
lxqt-policykit-agent &
picom &
parcellite &
flameshot &
killall pasystray && pasystray &
autorandr --change
nitrogen --restore

# Touchpad Gestures
libinput-gestures-setup start &
# Touchscreen Mapping
(sleep 5 && /home/noppakorn/.local/bin/map_touchscreen) &
