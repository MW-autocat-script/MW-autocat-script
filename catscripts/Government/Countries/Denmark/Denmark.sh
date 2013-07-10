#!/bin/bash


. ./catscripts/Government/Countries/Denmark/Vikings/Vikings.sh

KEYWORDS_DENMARK="Denmark"
KEYWORDS_GREENLAND="Greenland"
KEYWORDS_DENMARK_EXCLUDE="$KEYWORDS_VIKINGS|$KEYWORDS_GREENLAND"

egrep -i "$KEYWORDS_DENMARK" newpages.txt | egrep -iv "$KEYWORDS_DENMARK_EXCLUDE" >> Denmark.txt
egrep -i "$KEYWORDS_GREENLAND" newpages.txt >> Greenland.txt

DENMARK=`stat --print=%s Denmark.txt`
GREENLAND=`stat --print=%s Greenland.txt`

if [ $DENMARK -ne 0 ];
then
  export CATFILE="Denmark.txt"
  export CATNAME="Denmark"
  $CATEGORIZE
fi

if [ $GREENLAND -ne 0 ];
then
  export CATFILE="Greenland.txt"
  export CATNAME="Greenland"
  $CATEGORIZE
fi

rm Denmark.txt
rm Greenland.txt