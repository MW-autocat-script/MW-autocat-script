#!/bin/bash

egrep -i 'Knights(| )of(| )the(| )Old(| )Republic(| )(II|2)|KOTOR(| )(2|II)' newpages.txt >> KOTOR2.txt

KOTOR2=`stat --print=%s KOTOR2.txt`

if [ $KOTOR2 -ne 0 ];
then
  export CATFILE="KOTOR2.txt"
  export CATNAME="Star Wars: Knights of the Old Republic II – The Sith Lords"
  $CATEGORIZE
fi

rm KOTOR2.txt