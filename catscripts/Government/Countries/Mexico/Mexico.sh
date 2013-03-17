#!/bin/bash

egrep -i 'Mexico|Mexican|Tijuana' newpages.txt | egrep -iv 'New(| )Mexic(o|an)' >> Mexico.txt

MEXICO=`stat --print=%s Mexico.txt`

if [ $MEXICO -ne 0 ];
then
  export CATFILE="Mexico.txt"
  export CATNAME="Mexico"
  $CATSCRIPTS
fi

rm Mexico.txt