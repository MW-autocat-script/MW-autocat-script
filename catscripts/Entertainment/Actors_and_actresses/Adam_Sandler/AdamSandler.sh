#!/bin/bash

KEYWORDS_ACTOR_ADAMSANDLER="Adam(| )Sandler"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Adam Sandler"

  SANDLER=$(egrep -i "$KEYWORDS_ACTOR_ADAMSANDLER" "$NEWPAGES")

  if [ "$SANDLER" != "" ];
  then
    printf "%s" "$SANDLER" > AdamSandler.txt
    export CATFILE="AdamSandler.txt"
    export CATNAME="Adam Sandler"
    $CATEGORIZE
    rm AdamSandler.txt
    unset SANDLER
  fi

  debug_end "Adam Sandler"

fi