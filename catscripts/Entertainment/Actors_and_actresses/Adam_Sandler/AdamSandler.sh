#!/bin/bash

KEYWORDS_ACTOR_ADAMSANDLER="Adam(| )Sandler"

if [ "$1" == "" ]; #Normal operation
then
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Adam Sandler\n" 
  fi

  SANDLER=$(egrep -i "$KEYWORDS_ACTOR_ADAMSANDLER" newpages.txt)

  if [ "$SANDLER" != "" ];
  then
    printf "%s" "$SANDLER" > AdamSandler.txt
    export CATFILE="AdamSandler.txt"
    export CATNAME="Adam Sandler"
    $CATEGORIZE
    rm AdamSandler.txt
    unset SANDLER
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Adam Sandler\n" 
  fi
fi