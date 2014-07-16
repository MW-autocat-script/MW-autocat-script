#!/bin/bash

KEYWORDS_BRAZIL="Brazil"
KEYWORDS_BRAZIL_ALL="$KEYWORDS_BRAZIL"

if [ "$1" == "" ];
then
  
  debug_start "Brazil"

  BRAZIL=$(egrep -i "$KEYWORDS_BRAZIL" newpages.txt)

  if [ "$BRAZIL" != "" ];
  then
    printf "%s" "$BRAZIL" > Brazil.txt
    export CATFILE="Brazil.txt"
    export CATNAME="Brazil"
    $CATEGORIZE
    rm Brazil.txt
    unset BRAZIL
  fi

  debug_end "Brazil"

fi