#!/bin/bash

KEYWORDS_INSECTS="Insect"
KEYWORDS_ANTS="\bAnt(|s)\b"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Insects\n"
  fi

  ANTS=$(egrep -i "$KEYWORDS_ANTS" newpages.txt)

  if [ "$ANTS" != "" ];
  then
    printf "$ANTS" > Ants.txt
    export CATFILE="Ants.txt"
    export CATNAME="Ants"
    $CATEGORIZE
    rm Ants.txt
    unset ANTS
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Insects\n"
  fi

fi