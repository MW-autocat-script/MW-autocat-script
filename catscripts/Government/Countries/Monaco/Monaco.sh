#!/bin/bash

KEYWORDS_MONACO="Monaco"
KEYWORDS_MONACO_EXCLUDE="Monaco(| )skin|Wikia"
KEYWORDS_MONACO_ALL="$KEYWORDS_MONACO"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Monaco\n"
  fi

  MONACO=$(egrep -i "$KEYWORDS_MONACO" newpages.txt | egrep -iv "$KEYWORDS_MONACO_EXCLUDE")

  if [ "$MONACO" != "" ];
  then
    printf "$MONACO" > Monaco.txt
    export CATFILE="Monaco.txt"
    export CATNAME="Monaco"
    $CATEGORIZE
    rm Monaco.txt
    unset MONACO
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Monaco\n"
  fi

fi