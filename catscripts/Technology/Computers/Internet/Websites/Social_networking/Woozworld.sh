#!/bin/bash

KEYWORDS_WOOZWORLD="Wooz(| )world"

egrep -i "$KEYWORDS_WOOZWORLD" newpages.txt > Woozworld.txt

WOOZWORLD=`stat --print=%s Woozworld.txt`

if [ $WOOZWORLD -ne 0 ];
then
  export CATFILE="Woozworld.txt"
  export CATNAME="Woozworld"
  $CATEGORIZE
fi

rm Woozworld.txt
