#!/bin/bash

KEYWORDS_PS1="PS(| )(1\b|one)|Play(| )Station"
KEYWORDS_PS1_EXCLUDE="Play(| )Station(| )(2|3|4|5|6|7|8|9|10|Network)|\bPSN\b" # If this script is still being used when the PlayStation 11 comes out, I will kill myself

egrep -i "$KEYWORDS_PS1" newpages.txt | egrep -iv "$KEYWORDS_PS1_EXCLUDE" > PlayStation.txt

PS1=`stat --print=%s PlayStation.txt`

if [ $PS1 -ne 0 ];
then
  export CATFILE="PlayStation.txt"
  export CATNAME="PlayStation"
  $CATEGORIZE
fi

rm PlayStation.txt