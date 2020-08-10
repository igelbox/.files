export PATH=$PATH:$HOME/.bin/
xrandr --auto --dpi 110

xcompmgr&

redshift &
setxkbmap -option grp:switch,grp:caps_toggle,grp_led:caps us,ru
feh --bg-scale /usr/share/backgrounds/archlinux/archlinux-berry.jpg --no-fehbg
/usr/lib/notify-osd/notify-osd &
numlockx

syndaemon -i 1 -t -K &
libinput-gestures-setup start

dbus-launch i3
