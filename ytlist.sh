#!/bin/bash
# List YouTube video search results
# by Robert Eckhaus, 2013

wget "https://gdata.youtube.com/feeds/api/videos?q=$1" -qO /tmp/ytxml
xml_grep 'media:title' /tmp/ytxml | grep -Eow '>.*<' | nl -n ln
rm /tmp/ytxml
