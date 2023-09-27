#!/bin/bash

# This script moves files to different folders based on the creation date

# Get files and folders names

scriptName=$(basename $0)

ls -l | grep -v "$scriptName" | awk '{for(i=6;i<=NF;i++) printf $i" "; print ""}' | sed '/^ *$/d' > .files.txt

awk '{print $1, $2}' .files.txt | sort | uniq > .foldersName.txt

awk '{for(i=4;i<=NF;i++) printf $i" "; print ""}' .files.txt > .filesNames.txt

# Make folders with a name as pictures date (e.g, "Month Day")
cat .foldersName.txt | while read line; do mkdir "$line"; done

# Move files to folders  
cat .filesNames.txt | while read line; do mv "$line" "$(ls -l "${line}" | awk {'print $6, $7'})"; done

# Remove script files
rm .foldersName.txt .filesNames.txt .files.txt

