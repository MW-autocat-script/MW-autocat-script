#!/bin/bash

KEYWORDS_ISLAM="Islam|Muslim|\bSunni(|s)\b|Shiite|hajj|Prophet (Muhammed|Muhammad)|halal"
KEYWORDS_RAMADAN="Ramadan"
KEYWORDS_ISLAM_EXCLUDE="$KEYWORDS_RAMADAN|Mecca|Medina"
KEYWORDS_ISLAM_ALL="$KEYWORDS_ISLAM|$KEYWORDS_RAMADAN"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Islam"

  ISLAM=$(egrep -i "$KEYWORDS_ISLAM" "$NEWPAGES" | egrep -iv "$KEYWORDS_ISLAM_EXCLUDE")
  RAMADAN=$(egrep -i "$KEYWORDS_RAMADAN" "$NEWPAGES")

  if [ "$ISLAM" != "" ];
  then
    printf "%s" "$ISLAM" > Islam.txt
    export CATFILE="Islam.txt"
    export CATNAME="Islam"
    $CATEGORIZE
    rm Islam.txt
    unset ISLAM
  fi

  if [ "$RAMADAN" != "" ];
  then
    printf "%s" "$RAMADAN" > Ramadan.txt
    export CATFILE="Ramadan.txt"
    export CATNAME="Ramadan"
    $CATEGORIZE
    rm Ramadan.txt
    unset RAMADAN
  fi

  debug_end "Islam"

fi

