#!/bin/bash

KEYWORDS_VENEZUELA="Venezuela"

VENEZUELA=$(egrep -i "$KEYWORDS_VENEZUELA" newpages.txt)

if [ "$VENEZUELA" != "" ];
then
  printf "%s" "$VENEZUELA" > Venezuela.txt
  export CATFILE="Venezuela.txt"
  export CATNAME="Venezuela"
  $CATEGORIZE
  rm Venezuela.txt
  unset VENEZUELA
fi