#!/bin/bash

cat newpages.txt | egrep -i 'Xbox 360|Xbox360' | egrep -iv 'for the Xbox 360|For Xbox 360|on (|the) Xbox 360' >> Xbox360.txt

X360=`stat --print=%s Xbox360.txt`

if [ $X360 -ne 0 ];
then
  export CATFILE="Xbox360.txt"
  export CATNAME="Xbox 360"
  ./catscripts/Categorize.sh
fi

rm Xbox360.txt
