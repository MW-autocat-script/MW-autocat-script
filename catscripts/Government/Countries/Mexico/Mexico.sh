#!/bin/bash

egrep -i 'Mexic(o|an)|Tijuana' newpages.txt | egrep -iv 'New(| )Mexic(o|an)' > Mexico.txt

MEXICO=`stat --print=%s Mexico.txt`

if [ $MEXICO -ne 0 ];
then
  export CATFILE="Mexico.txt"
  export CATNAME="Mexico"
  $CATEGORIZE
fi

rm Mexico.txt