#!/bin/bash 

set -o posix #make bash file posix compliant for cross-compilation

set -e #terminate script if any command returns non-zero exit code

# keep track of the last executed command
trap 'last_command=$current_command; current_command=$BASH_COMMAND' DEBUG
# echo an error message before exiting
trap 'echo "\"${last_command}\" command filed with exit code $?."' EXIT

#use heredoc to install files (always check if files exist)


