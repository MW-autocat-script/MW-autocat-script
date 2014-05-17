#!/bin/bash

KEYWORDS_MONGOLIA="Mongolia"

if [ "$1" == "" ]; #Normal operation
then
  
  MONGOLIA=$(egrep -i "$KEYWORDS_MONGOLIA" newpages.txt)

  if [ "$MONGOLIA" != "" ];
  then
    egrep -i "$KEYWORDS_MONGOLIA" newpages.txt > Mongolia.txt
    CATFILE="Mongolia.txt"
    CATNAME="Mongolia"
    $CATEGORIZE
    rm Mongolia.txt
    unset MONGOLIA
  fi

fi