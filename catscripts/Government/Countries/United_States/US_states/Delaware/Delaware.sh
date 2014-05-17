#!/bin/bash

KEYWORDS_DELAWARE="Delaware"

DELAWARE=$(egrep -i "$KEYWORDS_DELAWARE" newpages.txt)

if [ "$DELAWARE" != "" ];
then
  egrep -i "$KEYWORDS_DELAWARE" newpages.txt >> Delaware.txt
  export CATFILE="Delaware.txt"
  export CATNAME="Delaware"
  $CATEGORIZE
  rm Delaware.txt
  unset DELAWARE
fi