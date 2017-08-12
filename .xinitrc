export PATH=$PATH:$HOME/.bin/

redshift &
setxkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,ru
feh --bg-scale /usr/share/archlinux/wallpaper/archlinux-berry.jpg --no-fehbg
/usr/lib/notify-osd/notify-osd &
volumeicon &

i3
