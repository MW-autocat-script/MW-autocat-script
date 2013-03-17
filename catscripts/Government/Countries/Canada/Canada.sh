#!/bin/bash

egrep -i 'Canada' newpages.txt | egrep iv 'ginger(| )ale|Toronto' >> Canada.txt
egrep -i 'Toronto' newpages.txt >> Toronto.txt

CANADA=`stat --print=%s Canada.txt`
TORONTO=`stat --print=%s Toronto.txt`

if [ $CANADA -ne 0 ];
then
  export CATFILE="Canada.txt"
  export CATNAME="Canada"
  $CATEGORIZE
fi

if [ $TORONTO -ne 0 ];
then
  export CATFILE="Toronto.txt"
  export CATNAME="Toronto"
  $CATEGORIZE
fi

rm Canada.txt
rm Toronto.txt