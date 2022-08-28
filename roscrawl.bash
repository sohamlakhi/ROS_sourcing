#!/bin/bash 

set -o posix #make bash file posix compliant for cross-compilation

#add crawler to opt/folder (find some place) and source from bashrc -> every time it is called, it must crawl through everything and ONLY add entry if it hasn't been added before

#check if file exists
function readfile() {
	while 
}
CONFIGFILE=~/.config/rossourcing/config.txt
if ![ -f "$CONFIGFILE" ]; then
    touch $CONFIGFILE
fi

if [ -d /opt/ros ]; then 
    for DIRECTORY in *; do
    	if [ -d "$DIRECTORY" ]; then
	    	if [ -f /opt/ros/$DIRECTORY/setup.bash ]; then 
			#add key:value pair if it does not already exist			     	
	    	fi
	fi
    done
fi

#find all expressions matching _ws. and loop through them
	#if director
		#if 

#if /opt/ros exists? add all directory names with corresponding source expressions. source /opt/ros/$variable/setup.bash, while checking if they have already been added

#if file has trailing _ws? check if path/install/setup.bash exists? check if it has already been entered? add path/install/setup.bash


