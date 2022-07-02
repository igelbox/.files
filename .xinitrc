#xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto --dpi 192
#xrandr --auto --dpi 192 --output eDP --scale 1.25x1.25
#export GDK_SCALE=2
export GDK_DPI_SCALE=1.6
export QT_FONT_DPI=192
export PATH=$PATH:$HOME/.bin/:$HOME/.nvm/versions/node/xprofile/bin
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
#export NODE_OPTIONS="$NODE_OPTIONS --max_old_space_size=1024"
#export JAVA_OPTS="-Xmx384m"
ssh-agent -a $SSH_AUTH_SOCK

xcompmgr&
#xsetwacom set "Wacom One by Wacom S Pen stylus" button 2 "pan"
#xsetwacom set "Wacom One by Wacom S Pen stylus" PanScrollThreshold 50

redshift &
setxkbmap -option grp:switch,grp:caps_toggle,grp_led:caps us,ru
feh --bg-scale /usr/share/backgrounds/archlinux/archwave.png --no-fehbg
/usr/lib/notify-osd/notify-osd &
#numlockx

#syndaemon -i 1 -t -K -d
libinput-gestures-setup start

#xrandr --listproviders > /tmp/lp
#nm-applet&
dbus-launch i3
