#!/bin/bash

KEYWORDS_SOUTHDAKOTA="South(| )Dakota"

egrep -i "$KEYWORDS_SOUTHDAKOTA" newpages.txt >> SouthDakota.txt

SOUTHDAKOTA=$(stat --print=%s SouthDakota.txt)

if [ $SOUTHDAKOTA -ne 0 ];
then
  export CATFILE="SouthDakota.txt"
  export CATNAME="South Dakota"
  $CATEGORIZE
fi

rm SouthDakota.txt