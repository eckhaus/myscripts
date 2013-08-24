#!/bin/bash
# Simple find shortcut - exclude hidden directories
# by Robert Eckhaus, 2013
until [ -z "$1" ] 
do 
	find ~ -type f -iname *"$1"* -not -regex '.*\/\..*' 2> /dev/null
	find ~ -type d -iname *"$1"* -not -regex '.*\/\..*' 2> /dev/null
	shift 
done 
