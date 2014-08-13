#!/bin/bash

KEYWORDS_BIONICLE="Bionicle"
KEYWORDS_BIONICLE_ALL="$KEYWORDS_BIONICLE"

if [ "$1" == "" ];
then
  
  debug_start "Bionicle"

  BIONICLE=$(egrep -i "$KEYWORDS_BIONICLE" newpages.txt)

  if [ "$BIONICLE" != "" ];
  then
    printf "%s" "$BIONICLE" > Bionicle.txt
    export CATFILE="Bionicle.txt"
    export CATNAME="Lego Bionicle"
    $CATEGORIZE
    rm Bionicle.txt
    unset BIONICLE
  fi

  debug_end "Bionicle"

fi