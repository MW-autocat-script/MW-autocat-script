#!/bin/bash

KEYWORDS_CONNECTICUT="Connecticut|Hartford|, CT\b"

CONNECTICUT=$(egrep -i "$KEYWORDS_CONNECTICUT" newpages.txt)

if [ "$CONNECTICUT" != "" ];
then
  egrep -i "$KEYWORDS_CONNECTICUT" newpages.txt > Connecticut.txt
  export CATFILE="Connecticut.txt"
  export CATNAME="Connecticut"
  $CATEGORIZE
  rm Connecticut.txt
  unset CONNECTICUT
fi