#!/bin/bash

KEYWORDS_SUDAN="Sudan|Darfur"
KEYWORDS_SUDAN_ALL="$KEYWORDS_SUDAN"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Sudan\n"
  fi

  SUDAN="$(egrep -i "$KEYWORDS_SUDAN" newpages.txt)"

  if [ "$SUDAN" != "" ];
  then
    printf "%s" "$SUDAN" > Sudan.txt
    export CATFILE="Sudan.txt"
    export CATNAME="Sudan"
    $CATEGORIZE
    rm Sudan.txt
    unset SUDAN
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Sudan\n"
  fi

fi