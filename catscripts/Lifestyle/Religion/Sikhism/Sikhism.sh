#!/bin/bash

KEYWORDS_SIKHISM="\bSikh"
KEYWORDS_SIKHISM_ALL="$KEYWORDS_SIKHISM"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Sikhism\n"
  fi

  SIKHISM=$(egrep -i "$KEYWORDS_SIKHISM" newpages.txt)

  if [ "$SIKHISM" != "" ];
  then
    printf "$SIKHISM" > Sikhism.txt
    export CATFILE="Sikhism.txt"
    export CATNAME="Sikhism"
    $CATEGORIZE
    rm Sikhism.txt
    unset SIKHISM
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Sikhism\n"
  fi

fi
