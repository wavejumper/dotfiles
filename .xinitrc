mpd ~/.mpdconf &
mpdscribble &
xautolock -time 10 -locker slock &
feh --bg-scale ~/images/Mars_2560x1440.jpg & 
xrdb -merge ~/.Xresources &
xmodmap ~/.speedswapper &
redshift -l 33.7:144.9 -t 5700:3600 -g 0.8 -m RANDR -v &
exec awesome
