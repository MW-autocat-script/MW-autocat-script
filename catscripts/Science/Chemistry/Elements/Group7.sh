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
  ./catscripts/Categorize.sh
fi

if [ $TECHNETIUM -ne 0 ];
then
  export CATFILE="Technetium.txt"
  export CATNAME="Technetium"
  ./catscripts/Categorize.sh
fi

if [ $RHENIUM -ne 0 ];
then
  export CATFILE="Rhenium.txt"
  export CATNAME="Rhenium"
  ./catscripts/Categorize.sh
fi

if [ $BOHRIUM -ne 0 ];
then
  export CATFILE="Bohrium.txt"
  export CATNAME="Bohrium"
  ./catscripts/Categorize.sh
fi

rm Manganese.txt
rm Technetium.txt
rm Rhenium.txt
rm Bohrium.txt