#!/bin/bash

# To hide all the files in the current directory 

for x in * ;
do
    mv $x .$x
done
