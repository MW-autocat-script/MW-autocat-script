#!/bin/bash

egrep -i 'Arkansas' newpages.txt > Arkansas.txt

ARKANSAS=`stat --print=%s Arkansas.txt`

if [ $ARKANSAS -ne 0 ];
then
  export CATFILE="Arkansas.txt"
  export CATNAME="Arkansas"
  ./catscripts/Categorize.sh
fi

rm Arkansas.txt