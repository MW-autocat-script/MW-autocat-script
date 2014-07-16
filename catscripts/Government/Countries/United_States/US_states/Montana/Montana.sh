#!/bin/bash

KEYWORDS_MONTANA="Montana"
KEYWORDS_MONTANA_EXCLUDE="Hanna(|h)(| )Montana"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Montana"

  MONTANA=$(egrep -i "$KEYWORDS_MONTANA" newpages.txt | egrep -iv "$KEYWORDS_MONTANA_EXCLUDE")

  if [ "$MONTANA" != "" ];
  then
    printf "%s" "$MONTANA" > Montana.txt
    export CATFILE="Montana.txt"
    export CATNAME="Montana"
    $CATEGORIZE
    rm Montana.txt
    unset MONTANA
  fi

  debug_end "Montana"

fi