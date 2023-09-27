#!/bin/bash

# To unhide all the hidden files

for x in .* ;
do
    mv  $x ${x:1}
done

