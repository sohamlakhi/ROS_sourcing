#!/bin/bash 

set -o posix #make bash file posix compliant for cross-compilation

#crawl through directories to find ROS distros
# ls /opt/ros | 

#crawl through directories to find workspaces

#make environment variables 

#write install script

#could store distros, etc as environment variables (separate by colon)
#could store in a txt/json/yaml file and read from there 

#consider writing a function 

#look into autocompletion (complete - feature)


#install everything in the opt or usr/bin folder
#create a function that sources your input (distro/workspace)
#provide autocomplete for rossource as well as directory if its on PATH (might work, might not work -> could put all *_ws and distros in yaml file

#check whether the given option has a setup.bash in its sub-tree

#do not have to make it a function 

function rossource() {
	#read line from config file 
	while read LINE; do
		#echo $LINE | cut -d ':' -f 1 | EXTRACT
		echo $LINE | grep $1 | 
		#extract before ':'
		#if variable == $1, extract rest and source

	done < ~/.config/rossourcing/config.txt
	
 #autocompletion -> parse file (use sed) and display everything as words
 #find entry and use sed/awk to extract source
 # extract path and source workspace
}

function rosadd() {
 #auto completion
 #check if folder exists
 #error-handling accepting one parameter only (or more)
 #add $1 to yaml file 
}

#write install script to add functions to usr/bin folder
#create config file in usr/conf folder with key(name):value(source path). Use sed to extract and discard everything upto the : and run the rest with source

