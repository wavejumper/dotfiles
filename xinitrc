xrdb ~/.Xresources &
xmodmap ~/.speed &
redshift -l 33.7:144.9 &
stty -ixon

case "$2" in
  awesome)
    feh --bg-fill ~/Images/2560x1440.png &
    if [ -n "$GNOME_KEYRING_PID" ]; then
      eval $(gnome-keyring-daemon --start --components=ssh)
      export SSH_AUTH_SOCK
    fi
    pulseaudio --start &
    xautolock -time 10 -locker slock &
    exec awesome
    ;;
  gnome)
    exec gnome-session
    ;;
esac
