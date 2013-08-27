#!/bin/bash

until [ -z "$1" ] 
do 
	
	locate -ib *"$1"* | grep -Ev ".*\/\..*" | grep -E "^/home/eckhaus/" | enquote | xargs ls -lahd --color #2> /dev/null
	
	shift 
done 
