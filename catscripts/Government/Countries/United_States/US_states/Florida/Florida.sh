#!/bin/bash

egrep -i 'Florida' newpages.txt | egrep -iv 'Miami' >> Florida.txt
egrep -i 'Everglades' newpages.txt >> Florida.txt
egrep -i 'Miami' newpages.txt | egrep -iv 'CSI(:|| )Miami' >> Miami.txt

FLORIDA=`stat --print=%s Florida.txt`
MIAMI=`stat --print=%s Miami.txt`

if [ $FLORIDA -ne 0 ];
then
  export CATFILE="Florida.txt"
  export CATNAME="Florida"
  $CATEGORIZE
fi

if [ $MIAMI -ne 0 ];
then
  export CATFILE="Miami.txt"
  export CATNAME="Miami"
  $CATEGORIZE
fi

rm Florida.txt
rm Miami.txt