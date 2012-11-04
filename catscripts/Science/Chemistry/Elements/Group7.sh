#!/bin/bash 

cat newpages.txt | egrep -i 'Manganese' >> Manganese.txt
cat newpages.txt | egrep -i 'Technetium' >> Technetium.txt
cat newpages.txt | egrep -i 'Rhenium' >> Rhenium.txt
cat newpages.txt | egrep -i 'Bohrium' >> Bohrium.txt

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