#!/bin/bash

egrep -i 'Ghost(| )X' newpages.txt >> GhostX.txt

GHOSTX=`stat --print=%s GhostX.txt`

if [ $GHOSTX -ne 0 ];
then
  export CATFILE="GhostX.txt"
  export CATNAME="GhostX"
  ./catscripts/Categorize.sh
fi

rm GhostX.txt