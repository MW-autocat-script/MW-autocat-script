#!/bin/bash

egrep -i 'Mac(| )OS' newpages.txt >> MacOSX.txt

MACOS=`stat --print=%s MacOSX.txt`

if [ $MACOS -ne 0 ];
then
  export CATFILE="MacOSX.txt"
  export CATNAME="Mac OS X"
  $CATEGORIZE
fi

rm MacOSX.txt