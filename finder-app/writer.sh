#!/bin/bash
# Writes a provided string (writestr) to a provided file (writefile)
#
# Takes:
#	- writefile: a full path to the file (including filename) on the filesystem
#	- writestr:  text string which will be written to writestr
#
# Exits with error code 1 if: 
#	- any of the arguments above are not provided
#
# Creates a new file with name and path (writefile) with content writestr, overwriting any existing file and creating the path if it doesn't exist. Exits with value 1 and error print statement if the file could not be created.

# Check the proper number of parameters were passed
if [ $# != 2 ]
then 
	echo not enough parameters provided. Expected 2, received $#
	exit 1
fi

# create the filepath if it doesn't exist
echo $1
DIR_PATH=$(dirname "$1")
# echo creating directory $DIR_PATH
mkdir -p $DIR_PATH

# Write to the file in the given writefile
echo "$2" > $1

