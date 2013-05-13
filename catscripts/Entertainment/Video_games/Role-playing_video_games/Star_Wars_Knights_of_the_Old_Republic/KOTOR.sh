#!/bin/bash

egrep -i 'Knights of the Old Republic|KOTOR' newpages.txt | egrep -iv 'The(| )Old(| )Republic(| )(2|II)|KOTOR(| )(2|II)' >> KOTOR.txt

KOTOR=`stat --print=%s KOTOR.txt`

if [ $KOTOR -ne 0 ];
then
  export CATFILE="KOTOR.txt"
  export CATNAME="Star Wars: Knights of the Old Republic"
  $CATEGORIZE
fi

rm KOTOR.txt