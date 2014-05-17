#!/bin/bash

KEYWORDS_NAMIBIA="Namibia"
KEYWORDS_NAMIBIA_ALL="$KEYWORDS_NAMIBIA"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Namibia\n"
  fi

  NAMIBIA=$(egrep -i "$KEYWORDS_NAMIBIA" newpages.txt)

  if [ "$NAMIBIA" != "" ];
  then
    printf "$NAMIBIA" > Namibia.txt
    export CATFILE="Namibia.txt"
    export CATNAME="Namibia"
    $CATEGORIZE
    rm Namibia.txt
    unset NAMIBIA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Namibia\n"
  fi

fi
