#!/bin/bash

egrep -i "Assassin('|)s(| )Creed" newpages.txt | egrep -iv "Assassin('|)s(| )Creed(| )(2|\bII\b|3|\bIII\b|)" >> Series.txt
egrep -i "Assassin('|)s(| )Creed(| )(2|II\b)" newpages.txt >> Two.txt
egrep -i "Assassin('|)s(| )Creed(| )(3|III\b)" newpages.txt >> Three.txt

SERIES=`stat --print=%s Series.txt`
TWO=`stat --print=%s Two.txt`
THREE=`stat --print=%s Three.txt`

if [ $SERIES -ne 0 ];
then
  export CATFILE="Series.txt"
  export CATNAME="Assassin's Creed series"
  ./catscripts/Categorize.sh
fi

if [ $TWO -ne 0 ];
then
  export CATFILE="Two.txt"
  export CATNAME="Assassin's Creed II"
  ./catscripts/Categorize.sh
fi

if [ $THREE -ne 0 ];
then
  export CATFILE="Three.txt"
  export CATNAME="Assassin's Creed III"
  ./catscripts/Categorize.sh
fi

rm Series.txt
rm Two.txt
rm Three.txt

