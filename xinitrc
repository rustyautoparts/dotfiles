# Sets VirtualBox video drivers
/usr/bin/VBoxClient-all

[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

# Sets i3 background image
#feh --bg-scale ~/.config/mountains.jpg

xrandr --dpi 105

#Enables numlock on
numlockx &

# Launches i3 window manager on startx
exec i3 
# Launches awesomewm
#exec awesome
