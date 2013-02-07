#!/bin/bash

egrep -i "Linkin('|)(| )Park" newpages.txt >> LinkinPark.txt

LINKIN=`stat --print=%s LinkinPark.txt`

if [ $LINKIN -ne 0 ];
then
  export CATFILE="LinkinPark.txt"
  export CATNAME="Linkin Park"
  ./catscripts/Categorize.sh
fi

rm LinkinPark.txt