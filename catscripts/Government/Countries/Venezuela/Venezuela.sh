#!/bin/bash

KEYWORDS_VENEZUELA="Venezuela"

VENEZUELA=`egrep -i "$KEYWORDS_VENEZUELA" newpages.txt`

if [ "$VENEZUELA" != "" ];
then
  egrep -i "$KEYWORDS_VENEZUELA" newpages.txt > Venezuela.txt
  export CATFILE="Venezuela.txt"
  export CATNAME="Venezuela"
  $CATEGORIZE
  rm Venezuela.txt
fi