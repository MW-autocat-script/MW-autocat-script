#!/bin/bash

KEYWORDS_PS4="\bPS(| )(4|four)|Play(| )Station(| )(4|four)"

egrep -i "$KEYWORDS_PS4" newpages.txt >> PlayStation4.txt

PS4=$(stat --print=%s PlayStation4.txt)

if [ $PS4 -ne 0 ];
then
  export CATFILE="PlayStation4.txt"
  export CATNAME="PlayStation 4"
  $CATEGORIZE
fi

rm PlayStation4.txt