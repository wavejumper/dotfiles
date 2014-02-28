mpd ~/.mpdconf &
xautolock -time 5 -locker slock &
feh --bg-fixed ~/Images/2560x1440.png & 
xrdb -merge ~/.Xresources &
xmodmap ~/.speedswapper &
redshift -l 33.7:144.9 -t 5700:3600 &
exec awesome
