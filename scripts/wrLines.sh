#!/bin/bash

if [[ $# -eq 0 ]]
then
    echo "Usage : ./$(basename $0) [Path/to/the/file]"
else
    file=$1
    for i in {1..100};
    do
	echo "This line number $i" >> $file
    done
fi
