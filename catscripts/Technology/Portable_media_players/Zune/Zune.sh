#!/bin/bash

KEYWORDS_ZUNE="\bZune"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Zune\n"
  fi

  ZUNE=$(egrep -i "$KEYWORDS_ZUNE" newpages.txt)

  if [ "$ZUNE" != "" ];
  then
    printf "$ZUNE" > Zune.txt
    export CATFILE="Zune.txt"
    export CATNAME="Zune"
    $CATEGORIZE
    rm Zune.txt
    unset ZUNE
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Zune\n"
  fi

fi