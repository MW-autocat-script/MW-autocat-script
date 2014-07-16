#!/bin/bash

KEYWORDS_MONGOLIA="Mongolia"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Mongolia"
  
  MONGOLIA=$(egrep -i "$KEYWORDS_MONGOLIA" newpages.txt)

  if [ "$MONGOLIA" != "" ];
  then
    printf "%s" "$MONGOLIA" > Mongolia.txt
    export CATFILE="Mongolia.txt"
    export CATNAME="Mongolia"
    $CATEGORIZE
    rm Mongolia.txt
    unset MONGOLIA
  fi

  debug_end "Mongolia"

fi