#!/bin/bash

KEYWORDS_CHICKENPOX="chicken(| )pox"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Chicken pox"

  CHICKENPOX=$(egrep -i "$KEYWORDS_CHICKENPOX" "$NEWPAGES")

  if [ "$CHICKENPOX" != "" ];
  then
    printf "%s" "$CHICKENPOX" > Chickenpox.txt
    export CATFILE="Chickenpox.txt"
    export CATNAME="Chicken pox"
    $CATEGORIZE
    rm Chickenpox.txt
    unset CHICKENPOX
  fi

  debug_end "Chicken pox"

fi