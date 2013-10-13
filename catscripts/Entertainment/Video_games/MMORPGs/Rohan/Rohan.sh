#!/bin/bash

KEYWORDS_MMORPG_ROHAN="\bRohan|Katar(| )of(| )Destiny"

if [ "$1" == "" ];
then
  egrep -i "$KEYWORDS_MMORPG_ROHAN" newpages.txt > Rohan.txt
  
  ROHAN=`stat --print=%s Rohan.txt`

  if [ $ROHAN -ne 0 ];
  then
    export CATFILE="Rohan.txt"
    export CATNAME="Rohan: Blood Feud"
    $CATEGORIZE
  fi

  rm Rohan.txt

fi