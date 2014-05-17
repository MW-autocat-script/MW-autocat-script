#!/bin/bash

KEYWORDS_KENTUCKY="Kentucky"
KEYWORDS_KENTUCKY_EXCLUDE="Kentucky(| )Fried(| )Chicken"

egrep -i "$KEYWORDS_KENTUCKY" newpages.txt | egrep -iv "$KEYWORDS_KENTUCKY_EXCLUDE" >> Kentucky.txt

KENTUCKY=$(stat --print=%s Kentucky.txt)

if [ $KENTUCKY -ne 0 ];
then
  export CATFILE="Kentucky.txt"
  export CATNAME="Kentucky"
  $CATEGORIZE
fi

rm Kentucky.txt