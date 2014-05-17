#!/bin/bash

KEYWORDS_INDIANA="Indiana"
KEYWORDS_INDIANA_EXCLUDE="Indiana(| )County|Indiana(| )University|Indiana(| )Jones"

egrep -i "$KEYWORDS_INDIANA" newpages.txt | egrep -iv "$KEYWORDS_INDIANA_EXCLUDE" >> Indiana.txt

INDIANA=$(stat --print=%s Indiana.txt)

if [ $INDIANA -ne 0 ];
then
  export CATFILE="Indiana.txt"
  export CATNAME="Indiana"
  $CATEGORIZE
fi

rm Indiana.txt