#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
export VISUAL="nvim"
export EDITOR="$VISUAL"


# gpu
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto




# Don't Randomly Turn off
xset s off
xset -dpms
xset s noblank

# Speedy keys
xset r rate 190 40



# merge in defaults and keymaps

if [ -f $sysresources ]; then


    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

exec i3

#audio config

/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/pipewire-media-session &

# window compositor
picom -f &

# no sleep monitor
xset s off
xset s noblank
xset -dpms
#spotify
spotify-listener &
#firefox
#exec firefox
disown
