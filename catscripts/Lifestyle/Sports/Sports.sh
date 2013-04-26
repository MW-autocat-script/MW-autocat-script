#!/bin/bash

egrep -i 'soccer|footballer' newpages.txt >> Soccer.txt
egrep -i 'tennis' newpages.txt | egrep -iv 'table tennis' >> Tennis.txt

SOCCER=`stat --print=%s Soccer.txt`
TENNIS=`stat --print=%s Tennis.txt`

if [ $SOCCER -ne 0 ];
then
  export CATFILE="Soccer.txt"
  export CATNAME="Soccer (association football)"
  $CATEGORIZE
fi

if [ $TENNIS -ne 0 ];
then
  export CATFILE="Tennis.txt"
  export CATNAME="Tennis"
  $CATEGORIZE
fi

rm Soccer.txt
rm Tennis.txt