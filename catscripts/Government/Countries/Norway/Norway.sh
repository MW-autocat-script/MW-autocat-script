#!/bin/bash

. ./catscripts/Government/Countries/Denmark/Vikings/Vikings.sh norun

KEYWORDS_NORWAY="Norway"
KEYWORDS_NORWAY_EXCLUDE="$KEYWORDS_VIKINGS"

egrep -i "$KEYWORDS_NORWAY" newpages.txt | egrep -iv "$KEYWORDS_NORWAY_EXCLUDE" > Norway.txt

NORWAY=`stat --print=%s Norway.txt`

if [ $NORWAY -ne 0 ];
then
  export CATFILE="Norway.txt"
  export CATNAME="Norway"
  $CATEGORIZE
fi

rm Norway.txt