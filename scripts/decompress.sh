#!/bin/bash

if [ "$#" -eq 0 ]; 
then
    echo "Usage:  ./$(basename $0) [Compressed File]"
else
   case $1 in
         *.zip|*.7z)
              7z x $1
              ;;
         *.bz2)
              bzip2 -d $1
              ;;
         *.tar.gz)
              tar -xvf $1
              ;;       
         *.gz)
              gzip -d  $1
              ;;
         *.tar)
              tar -xvf $1
              ;;   
         *.rar)
              rar x $1
              ;;
         *)
              echo "Failed. Don\'t know the tool!!"
              ;;
    esac
fi
