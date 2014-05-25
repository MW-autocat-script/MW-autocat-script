#!/bin/bash

KEYWORDS_UAE="\bUAE|\bU\.A\.E|United(| )Arab(| )Emirates"
KEYWORDS_DUBAI="Dubai"
KEYWORDS_UAE_EXCLUDE="$KEYWORDS_DUBAI"
KEYWORDS_UAE_ALL="$KEYWORDS_UAE|$KEYWORDS_DUBAI"

if [ "$1" == "" ];
then
  
  debug_start "United Arab Emirates"

  UAE=$(egrep -i "$KEYWORDS_UAE" newpages.txt | egrep -iv "$KEYWORDS_UAE_EXCLUDE")
  DUBAI=$(egrep -i "$KEYWORDS_DUBAI" newpages.txt)

  if [ "$UAE" != "" ];
  then
    printf "%s" "$UAE" > UAE.txt
    export CATFILE="UAE.txt"
    export CATNAME="United Arab Emirates"
    $CATEGORIZE
    rm UAE.txt
    unset UAE
  fi

  if [ "$DUBAI" != "" ];
  then
    printf "%s" "$DUBAI" > Dubai.txt
    export CATFILE="Dubai.txt"
    export CATNAME="Dubai"
    $CATEGORIZE
    rm Dubai.txt
    unset DUBAI
  fi

  debug_end "United Arab Emirates"

fi