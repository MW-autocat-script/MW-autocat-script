#!/bin/bash

KEYWORDS_NEVADA="Nevada"
KEYWORDS_LASVEGAS="Las(| )Vegas"
KEYWORDS_NEVADA_EXCLUDE="$KEYWORDS_LASVEGAS"

if [ "$1" == "" ];
then

  debug_start "Nevada"

  NEVADA=$(egrep -i "$KEYWORDS_NEVADA" newpages.txt | egrep -iv "$KEYWORDS_NEVADA_EXCLUDE")
  LASVEGAS=$(egrep -i "$KEYWORDS_LASVEGAS" newpages.txt)

  if [ "$NEVADA" != "" ];
  then
    printf "%s" "$NEVADA" > Nevada.txt
    export CATFILE="Nevada.txt"
    export CATNAME="Nevada"
    $CATEGORIZE
    rm Nevada.txt
    unset NEVADA
  fi
  
  if [ "$LASVEGAS" != "" ];
  then
    printf "%s" "$LASVEGAS" > LasVegas.txt
    export CATFILE="LasVegas.txt"
    export CATNAME="Las Vegas"
    $CATEGORIZE
    rm LasVegas.txt
    unset LASVEGAS
  fi

  debug_end "Nevada"

fi
