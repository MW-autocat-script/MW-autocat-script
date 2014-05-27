#!/bin/bash

KEYWORDS_JORDAN="(king|queen|prince(|ss)).+ of Jordan|Jordanian|(kingdom|country|flag|government) of Jordan"
KEYWORDS_JORDAN_ALL="$KEYWORDS_JORDAN"

if [ "$1" == "" ];
then

  debug_start "Jordan"

  JORDAN=$(egrep -i "$KEYWORDS_JORDAN" newpages.txt)

  if [ "$JORDAN" != "" ];
  then
    printf "%s" "$JORDAN" > Jordan.txt
    export CATFILE="Jordan.txt"
    export CATNAME="Jordan"
    $CATEGORIZE
    rm Jordan.txt
    unset JORDAN
  fi

  denug_end "Jordan"

fi