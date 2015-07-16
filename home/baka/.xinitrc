#Set the keyboard layout to german.
setxkbmap de

#Start the audio server.
pulseaudio --start

#Set a acceptable cursor theme.
xsetroot -cursor_name left_ptr

#Start the composite manager for better video performance
compton -c -bzCG --backend glx --dbe --vsync opengl-swc --paint-on-overlay --mark-wmwin-focused --no-fading-openclose

#Set a random wallpaper from the whole wallpaper folder.
#feh --bg-scale $(echo -n "~/.wallpaper/")$(ls -l ~/.wallpaper | tail -n +2 | awk '{print $9}' | sort -R | tail -n 1)

#Set a fixed wallpaper from a syslink in the current wallpaper folder.
feh --bg-scale ~/.wallpaper/current/current_wallpaper

#Start the desktop widget
conky -c .conky/desktop_widget &

#Disable display sleep, etc.
xset -dpms && xset s noblank && xset s off

#Solve the root window problem with bspwm and JAVA Swing.
wmfix

#Start the panel.
bmpanel2 --theme=kurumi_tokisaki &

#Starts the shortcut manager.
sxhkd &

#Start powersaver functions to reduce power consume on a laptop.
#upower -e

#Start a window manager.
exec bspwm