#!/bin/bash

export KEYWORDS_MMORPG_SWTOR="The(| )Old(| )Republic|SW(:|)TOR"

egrep -i "$KEYWORDS_MMORPG_SWTOR" newpages.txt | egrep -iv 'Knights(| )of(| )the(| )old(| )Republic' >> SWTOR.txt

SWTOR=`stat --print=%s SWTOR.txt`

if [ $SWTOR -ne 0 ];
then
  export CATFILE="SWTOR.txt"
  export CATNAME="Star Wars: The Old Republic"
  $CATEGORIZE
fi

rm SWTOR.txt