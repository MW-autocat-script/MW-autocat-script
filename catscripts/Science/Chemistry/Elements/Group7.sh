#!/bin/bash 

egrep -i 'Manganese' newpages.txt >> Manganese.txt
egrep -i 'Technetium' newpages.txt >> Technetium.txt
egrep -i 'Rhenium' newpages.txt >> Rhenium.txt
egrep -i 'Bohrium' newpages.txt >> Bohrium.txt

MANGANESE=`stat --print=%s Manganese.txt`
TECHNETIUM=`stat --print=%s Technetium.txt`
RHENIUM=`stat --print=%s Rhenium.txt`
BOHRIUM=`stat --print=%s Bohrium.txt`

if [ $MANGANESE -ne 0 ];
then
  export CATFILE="Manganese.txt"
  export CATNAME="Manganese"
  $CATEGORIZE
fi

if [ $TECHNETIUM -ne 0 ];
then
  export CATFILE="Technetium.txt"
  export CATNAME="Technetium"
  $CATEGORIZE
fi

if [ $RHENIUM -ne 0 ];
then
  export CATFILE="Rhenium.txt"
  export CATNAME="Rhenium"
  $CATEGORIZE
fi

if [ $BOHRIUM -ne 0 ];
then
  export CATFILE="Bohrium.txt"
  export CATNAME="Bohrium"
  $CATEGORIZE
fi

rm Manganese.txt
rm Technetium.txt
rm Rhenium.txt
rm Bohrium.txt