#!/bin/bash

cat newpages.txt | egrep -i 'Mac OS' >> MacOSX.txt

MACOS=`stat --print=%s MacOSX.txt`

if [ $MACOS -ne 0 ];
then
  export CATFILE="MacOSX.txt"
  export CATNAME="Mac OS X"
  ./catscripts/Categorize.sh
fi

rm MacOSX.txt