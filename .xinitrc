#xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto --dpi 110
export PATH=$PATH:$HOME/.bin/:$HOME/.nvm/versions/node/xprofile/bin
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
#export NODE_OPTIONS="$NODE_OPTIONS --max_old_space_size=1024"
#export JAVA_OPTS="-Xmx384m"
ssh-agent -a $SSH_AUTH_SOCK

xcompmgr&

redshift &
setxkbmap -option grp:switch,grp:caps_toggle,grp_led:caps us,ru
feh --bg-scale /usr/share/backgrounds/archlinux/archwave.png --no-fehbg
/usr/lib/notify-osd/notify-osd &
numlockx

syndaemon -i 1 -t -K -d
libinput-gestures-setup start

#nm-applet&
dbus-launch i3
