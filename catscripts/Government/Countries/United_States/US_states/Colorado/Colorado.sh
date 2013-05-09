#!/bin/bash

egrep -i 'Colorado' newpages.txt | egrep -iv 'Denver' >> Colorado.txt
egrep -i 'Denver' newpages.txt | egrep -iv 'Denver(| )Broncos|Denver(| )Nuggets|John(| )Denver' >> Denver.txt

COLORADO=`stat --print=%s Colorado.txt`
DENVER=`stat --print=%s Denver.txt`

if [ $COLORADO -ne 0 ];
then
  export CATFILE="Colorado.txt"
  export CATNAME="Colorado"
  $CATEGORIZE
fi

if [ $DENVER -ne 0 ];
then
  export CATFILE="Denver.txt"
  export CATNAME="Denver, Colorado"
  $CATEGORIZE
fi

rm Colorado.txt
rm Denver.txt