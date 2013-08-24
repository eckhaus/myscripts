#! /bin/bash
# Play YouTube Video
# by Robert Eckhaus, 2013
wget "https://gdata.youtube.com/feeds/api/videos?q=$1" -qO /tmp/ytxml
YU="$(xml_grep 'link' /tmp/ytxml | grep -Eow '.*//www.youtube.com.*' | grep -o 'https.*gdata' | head -n ${2:-1} | tail -1)"
YU="${YU#*watch?v=}"
YU="${YU%&*}"
echo $YU
mplayer -fs -cookies -cookies-file /tmp/ytcookie.txt $(youtube-dl -g --cookies=/tmp/ytcookie.txt "http://www.youtube.com/watch?v=$YU")

rm /tmp/ytxml


#TODO: 	multiword argument support
#		playlist
