#!/bin/bash

KEYWORDS_HAWAII="Hawaii(|s)\b|Hawai'i|\bOahu"
KEYWORDS_HONOLULU="Honolulu"
KEYWORDS_PEARLHARBOR="Pearl(| )Harbo(|u)r"
KEYWORDS_HAWAII_EXCLUDE="$KEYWORDS_HONOLULU|$KEYWORDS_PEARLHARBOR"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Hawaii\n"
  fi

  HAWAII=$(egrep -i "$KEYWORDS_HAWAII" newpages.txt | egrep -iv "$KEYWORDS_HAWAII_EXCLUDE")
  HONOLULU=$(egrep -i "$KEYWORDS_HONOLULU" newpages.txt)
  PEARLHARBOR=$(egrep -i "$KEYWORDS_PEARLHARBOR" newpages.txt)

  if [ "$HAWAII" != "" ];
  then
    printf "$HAWAII" > Hawaii.txt
    export CATFILE="Hawaii.txt"
    export CATNAME="Hawaii"
    $CATEGORIZE
    rm Hawaii.txt
    unset HAWAII
  fi

  if [ "$HONOLULU" != "" ];
  then
    printf "$HONOLULU" > Honolulu.txt
    export CATFILE="Honolulu.txt"
    export CATNAME="Honolulu"
    $CATEGORIZE
    rm Honolulu.txt
    unset HONOLULU
  fi

  if [ "$PEARLHARBOR" != "" ];
  then
    printf "$PEARLHARBOR" > PearlHarbor.txt
    export CATFILE="PearlHarbor.txt"
    export CATNAME="Pearl Harbor"
    $CATEGORIZE
    rm PearlHarbor.txt
    unset PEARLHARBOR
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Hawaii\n"
  fi

fi