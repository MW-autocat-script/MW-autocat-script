#!/bin/bash

KEYWORDS_ISLAM="Islam|Muslim|\bSunni(|s)\b|Shiite|hajj|Prophet (Muhammed|Muhammad)|halal"
KEYWORDS_RAMADAN="Ramadan"
KEYWORDS_ISLAM_EXCLUDE="$KEYWORDS_RAMADAN|Mecca|Medina"
KEYWORDS_ISLAM_ALL="$KEYWORDS_ISLAM|$KEYWORDS_RAMADAN"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Islam\n"
  fi

  ISLAM=`egrep -i "$KEYWORDS_ISLAM" newpages.txt | egrep -iv "$KEYWORDS_ISLAM_EXCLUDE"`
  RAMADAN=`egrep -i "$KEYWORDS_RAMADAN" newpages.txt`

  if [ "$ISLAM" != "" ];
  then
    printf "$ISLAM" > Islam.txt
    export CATFILE="Islam.txt"
    export CATNAME="Islam"
    $CATEGORIZE
    rm Islam.txt
    unset ISLAM
  fi

  if [ "$RAMADAN" != "" ];
  then
    printf "$RAMADAN" > Ramadan.txt
    export CATFILE="Ramadan.txt"
    export CATNAME="Ramadan"
    $CATEGORIZE
    rm Ramadan.txt
    unset RAMADAN
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Islam\n"
  fi

fi

