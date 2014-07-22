#!/bin/bash

KEYWORDS_FIREARMS="\bFire(| )arm"
KEYWORDS_AK47="AK(| |-)47"
KEYWORDS_M16="\bM16(|s)\b|(|X)M16(a|e)[1-5]|AR(|-)15"
KEYWORDS_FIREARMS_EXCLUDE="$KEYWORDS_AK47|$KEYWORDS_M16"
KEYWORDS_FIREARMS_ALL="$KEYWORDS_FIREARMS|$KEYWORDS_AK47|$KEYWORDS_M16"

if [ "$1" == "" ];
then
  
  debug_start "Firearms"

  FIREARMS=$(egrep -i "$KEYWORDS_FIREARMS" newpages.txt| egrep -iv "$KEYWORDS_FIREARMS_EXCLUDE")
  AK47=$(egrep -i "$KEYWORDS_AK47" newpages.txt)
  M16=$(egrep -i "$KEYWORDS_M16" newpages.txt)

  if [ "$FIREARMS" != "" ];
  then
    printf "%s" "$FIREARMS" > Firearms.txt
    export CATFILE="Firearms.txt"
    export CATNAME="Firearms"
    $CATEGORIZE
    rm Firearms.txt
    unset FIREARMS
  fi
    

  if [ "$AK47" != "" ];
  then
    printf "%s" "$AK47" > AK47.txt
    export CATFILE="AK47.txt"
    export CATNAME="AK-47"
    $CATEGORIZE
    rm AK47.txt
    unset AK47
  fi

  if [ "$M16" != "" ];
  then
    printf "%s" "$M16" > M16.txt
    export CATFILE="M16.txt"
    export CATNAME="M16"
    $CATEGORIZE
    rm M16.txt
    unset M16
  fi

  debug_end "Firearms"

fi