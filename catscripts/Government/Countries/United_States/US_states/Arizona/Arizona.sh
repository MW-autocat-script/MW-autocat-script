#!/bin/bash

KEYWORDS_ARIZONA="Arizona"

ARIZONA=$(egrep -i "$KEYWORDS_ARIZONA" newpages.txt)

if [ "$ARIZONA" != "" ];
then
  egrep -i "$KEYWORDS_ARIZONA" newpages.txt > Arizona.txt
  export CATFILE="Arizona.txt"
  export CATNAME="Arizona"
  $CATEGORIZE
  rm Arizona.txt
fi