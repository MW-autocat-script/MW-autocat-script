#!/bin/bash

KEYWORDS_BAHAMAS="Bahamas|Bahamian"
KEYWORDS_BAHAMAS_ALL="$KEYWORDS_BAHAMAS"

if [ "$1" == "" ];
then

  debug_start "Bahamas"

  BAHAMAS="$(egrep -i "$KEYWORDS_BAHAMAS" "$NEWPAGES")"

  if [ "$BAHAMAS" != "" ];
  then
    printf "%s" "$BAHAMAS" > Bahamas.txt
    export CATFILE="Bahamas.txt"
    export CATNAME="The Bahamas"
    $CATEGORIZE
    rm Bahamas.txt
    unset BAHAMAS
  fi

  debug_end "Bahamas"

fi