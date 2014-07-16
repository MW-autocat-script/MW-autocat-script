#!/bin/bash

KEYWORDS_TANZIA="Tanzia"
KEYWORDS_TANZIA_ALL="$KEYWORDS_TANZIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Tanzia"

  TANZIA=$(egrep -i "$KEYWORDS_TANZIA" newpages.txt)

  if [ "$TANZIA" != "" ];
  then
    printf "%s" "$TANZIA" > Tanzia.txt
    export CATFILE="Tanzia.txt"
    export CATNAME="Tanzia"
    $CATEGORIZE
    rm Tanzia.txt
    unset TANZIA
  fi

  debug_end "Tanzia"

fi