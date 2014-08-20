#!/bin/bash

KEYWORDS_HAWAII="Hawaii(|s)\b|Hawai'i|\bOahu"
KEYWORDS_HONOLULU="Honolulu"
KEYWORDS_PEARLHARBOR="Pearl(| )Harbo(|u)r"
KEYWORDS_HAWAII_EXCLUDE="$KEYWORDS_HONOLULU|$KEYWORDS_PEARLHARBOR"
KEYWORDS_HAWAII_ALL="$KEYWORDS_HAWAII|$KEYWORDS_HONOLULU|$KEYWORDS_PEARLHARBOR"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Hawaii"

  HAWAII=$(egrep -i "$KEYWORDS_HAWAII" "$NEWPAGES" | egrep -iv "$KEYWORDS_HAWAII_EXCLUDE")
  HONOLULU=$(egrep -i "$KEYWORDS_HONOLULU" "$NEWPAGES")
  PEARLHARBOR=$(egrep -i "$KEYWORDS_PEARLHARBOR" "$NEWPAGES")

  if [ "$HAWAII" != "" ];
  then
    printf "%s" "$HAWAII" > Hawaii.txt
    export CATFILE="Hawaii.txt"
    export CATNAME="Hawaii"
    $CATEGORIZE
    rm Hawaii.txt
    unset HAWAII
  fi

  if [ "$HONOLULU" != "" ];
  then
    printf "%s" "$HONOLULU" > Honolulu.txt
    export CATFILE="Honolulu.txt"
    export CATNAME="Honolulu"
    $CATEGORIZE
    rm Honolulu.txt
    unset HONOLULU
  fi

  if [ "$PEARLHARBOR" != "" ];
  then
    printf "%s" "$PEARLHARBOR" > PearlHarbor.txt
    export CATFILE="PearlHarbor.txt"
    export CATNAME="Pearl Harbor"
    $CATEGORIZE
    rm PearlHarbor.txt
    unset PEARLHARBOR
  fi

  debug_end "Hawaii"

fi