#!/bin/bash

egrep -i "\bMoon\b|\bMoon's" newpages.txt | egrep -iv 'Sailor Moon|Type( |-)Moon' >> Moon.txt

MOON=`stat --print=%s Moon.txt`

if [ $MOON -ne 0 ];
then
  export CATFILE="Moon.txt"
  export CATNAME="Moon"
  ./catscripts/Categorize.sh
fi

rm Moon.txt