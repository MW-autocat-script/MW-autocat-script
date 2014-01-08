#!/bin/bash

KEYWORDS_CYPRUS="Cyrpus"
KEYWORDS_CYPRUS_ALL="$KEYWORDS_CYPRUS"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Cyprus\n"
  fi

  CYPRUS=`egrep -i "$KEYWORDS_CYPRUS" newpages.txt`

  if [ "$CYPRUS" != "" ];
  then
    printf "$CYPRUS" > Cyrpus.txt
    export CATFILE="Cyprus.txt"
    export CATNAME="Cyprus"
    $CATEGORIZE
    rm Cyprus.txt
    unset CYPRUS
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Cyprus\n"
  fi

fi