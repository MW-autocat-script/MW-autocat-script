#!/bin/bash

KEYWORDS_BAHAMAS="Bahamas"
KEYWORDS_BAHAMAS_ALL="$KEYWORDS_BAHAMAS"

if [ "$1" == "" ];
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Bahamas\n"
  fi

  BAHAMAS="$(egrep -i "$KEYWORDS_BAHAMAS" newpages.txt)"

  if [ "$BAHAMAS" != "" ];
  then
    printf "%s" "$BAHAMAS" > Bahamas.txt
    export CATFILE="Bahamas.txt"
    export CATNAME="The Bahamas"
    $CATEGORIZE
    rm Bahamas.txt
    unset BAHAMAS
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Bahamas\n"
  fi

fi