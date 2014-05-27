#!/bin/bash

KEYWORDS_IRELAND="Ireland"
KEYWORDS_IRELAND_EXCLUDE="Northern(| )Ireland"
KEYWORDS_IRELAND_ALL="$KEYWORDS_IRELAND"

if [ "$1" == "" ];
then

  debug_start "Ireland"

  IRELAND=$(egrep -i "$KEYWORDS_IRELAND" newpages.txt | egrep -iv "$KEYWORDS_IRELAND_EXCLUDE")

  if [ "$IRELAND" != "" ];
  then
    printf "%s" "$IRELAND" > Ireland.txt
    export CATFILE="Ireland.txt"
    export CATNAME="Republic of Ireland"
    $CATEGORIZE
    rm Ireland.txt
    unset IRELAND
  fi

  debug_end "Ireland"

fi