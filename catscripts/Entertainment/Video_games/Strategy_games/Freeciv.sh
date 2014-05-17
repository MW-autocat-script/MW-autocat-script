#!/bin/bash

KEYWORDS_FREECIV="Freeciv"
KEYWORDS_FREECIV_ALL="$KEYWORDS_FREECIV"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Freeciv\n"
  fi

  FREECIV=$(egrep -i "$KEYWORDS_FREECIV" newpages.txt)

  if [ "$FREECIV" != "" ];
  then
    printf "$FREECIV" > Freeciv.txt
    export CATFILE="Freeciv.txt"
    export CATNAME="Freeciv"
    $CATEGORIZE
    rm Freeciv.txt
    unset FREECIV
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Freeciv\n"
  fi

fi