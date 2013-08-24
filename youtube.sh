#!/bin/bash
# Youtube CLI Interface
# Based on youtube-dl (https://github.com/rg3/youtube-dl)
# by Robert Eckhaus, 2013

~/bin/myscripts/ytlist.sh $1 | head -n ${2:-1} | tail -1 	#Echo name
~/bin/myscripts/ytcore.sh $1 ${2:-1} 2>/dev/null 			#Play vid

# Compound keywords workaround:
# 1. + sign : "Coldplay Paradise" -> "Coldplay+Paradise"
# 2. &nbsp; (non-breaking space): "Google Chrome" -> Google&nbsp;Chrome
