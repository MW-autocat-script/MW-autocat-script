#!/bin/bash

KEYWORDS_NIGER="\bNiger(|s)\b"
KEYWORDS_NIGER_ALL="$KEYWORDS_NIGER"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Niger\n"
  fi

  NIGER=`egrep -i "$KEYWORDS_NIGER" newpages.txt`

  if [ "$NIGER" != "" ];
  then
    printf "$NIGER" > Niger.txt
    export CATFILE="Niger.txt"
    export CATNAME="Niger"
    $CATEGORIZE
    rm Niger.txt
    unset NIGER
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Niger\n"
  fi

fi