#!/bin/bash

KEYWORDS_ALASKA="Alaska|Seward's(| )icebox"

ALASKA=`egrep -i "$KEYWORDS_ALASKA" newpages.txt`

if [ "$ALASKA" != "" ];
then
  egrep -i "$KEYWORDS_ALASKA" newpages.txt > Alaska.txt
  export CATFILE="Alaska.txt"
  export CATNAME="Alaska"
  $CATEGORIZE
  rm Alaska.txt
fi