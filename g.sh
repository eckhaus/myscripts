#!/bin/bash
# Remove duplicate lines from search (goto.sh) script output
# by Robert Eckhaus, 2013
~/bin/myscripts/goto.sh "$@" | sort -u
