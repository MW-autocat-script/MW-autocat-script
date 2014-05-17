#!/bin/bash

KEYWORDS_ROMANIA="\bRomania"
KEYWORDS_ROMANIA_EXCLUDE="Romanian"
KEYWORDS_ROMANIA_ALL="$KEYWORDS_ROMANIA_ALL"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Romania\n"
  fi

  ROMANIA=$(egrep -i "$KEYWORDS_ROMANIA" newpages.txt | egrep -iv "$KEYWORDS_ROMANIA_EXCLUDE")

  if [ "$ROMANIA" != "" ];
  then
    printf "$ROMANIA" > Romania.txt
    export CATFILE="Romania.txt"
    export CATNAME="Romania"
    $CATEGORIZE
    rm Romania.txt
    unset ROMANIA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Romania\n"
  fi

fi