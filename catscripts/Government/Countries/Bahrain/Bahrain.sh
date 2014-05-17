#!/bin/bash

KEYWORDS_BAHRAIN="Bahrain"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Bahrain\n"
  fi

  BAHRAIN=$(egrep -i "$KEYWORDS_BAHRAIN" newpages.txt)

  if [ "$BAHRAIN" != "" ];
  then
    printf "$BAHRAIN" > Bahrain.txt
    export CATFILE="Bahrain.txt"
    export CATNAME="Bahrain"
    $CATEGORIZE
    rm Bahrain.txt
    unset BAHRAIN
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Bahrain\n"
  fi

fi