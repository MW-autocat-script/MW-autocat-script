#!/bin/bash

KEYWORDS_NIGERIA="Nigeria"
KEYWORDS_NIGERIA_ALL="Nigeria"

if [ "$1" == "" ];
then
  
  debug_start "Nigeria"

  NIGERIA=$(egrep -i "$KEYWORDS_NIGERIA" newpages.txt)

  if [ "$NIGERIA" != "" ];
  then
    printf "%s" "$NIGERIA" > Nigeria.txt
    export CATFILE="Nigeria.txt"
    export CATNAME="Nigeria"
    $CATEGORIZE
    rm Nigeria.txt
    unset NIGERIA
  fi

  debug_end "Nigeria"

fi