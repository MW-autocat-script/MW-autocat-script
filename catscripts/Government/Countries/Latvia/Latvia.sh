#!/bin/bash

egrep -i 'Latvia' newpages.txt >> Latvia.txt

LATVIA=`stat --print=%s Latvia.txt`

if [ $LATVIA -ne 0 ];
then
  export CATFILE="Latvia.txt"
  export CATNAME="Latvia"
  $CATEGORIZE
fi

rm Latvia.txt