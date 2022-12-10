#!/bin/bash 

set -o posix #make bash file posix compliant for cross-compilation

#set -e #terminate script if any command returns non-zero exit code

# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT

#add crawler to opt/folder (find some place) and source from bashrc -> every time it is called, it must crawl through everything and ONLY add entry if it hasn't been added before

#check if file exists - boolean function (return exits the function and returns the exit code of the last statement
function checkentry() {
	while read LINE; do
		if [ $LINE == $1 ]; then
			false
			return
		fi
	done < ~/.config/rossourcing/config.txt	
	
	echo toing
	true
	return
}

#CODE STARTS HERE

#does config file exist?
CONFIGFILE=~/.config/rossourcing/config.txt

if ! [ -d ~/.config/rossourcing/ ]; then
	mkdir ~/.config/rossourcing
fi

if ! [ -f "$CONFIGFILE" ]; then
	    touch $CONFIGFILE
fi

#crawling through opt for ros distros
if [ -d /opt/ros ]; then 
    cd /opt/ros/
    for DIRECTORY in *; do
    	if [ -d "$DIRECTORY" ]; then
    		CONFIG_ENTRY=/opt/ros/$DIRECTORY/setup.bash
    		#echo /opt/ros/$DIRECTORY/setup.bash
	    	if [ -f "$CONFIG_ENTRY" ]; then 
	    		if checkentry $CONFIG_ENTRY; then
				echo "source $CONFIG_ENTRY" >> "$CONFIGFILE"
			fi
	    	fi
	fi
    done
fi

#add workspaces using find ~ (use parameter substitution - like in while loop)

#find all expressions matching _ws. and loop through them
	#if director
		#if 

#if /opt/ros exists? add all directory names with corresponding source expressions. source /opt/ros/$variable/setup.bash, while checking if they have already been added

#if file has trailing _ws? check if path/install/setup.bash exists? check if it has already been entered? add path/install/setup.bash

#write read function. use parameter substitution 

#use heredoc to touch and place code in different files (always checkfile) 
