#!/bin/bash

KEYWORDS_MASSACHUSETTS="Massachusetts"
KEYWORDS_BOSTON="Boston"
KEYWORDS_BOSTON_EXCLUDE="Boston(| )(creame|creme)(| )pie"
KEYWORDS_MASSACHUSETTS_EXCLUDE="$KEYWORDS_BOSTON"

if [ "$1" == "" ];
then

  debug_start  "Massachusetts"

  MASSACHUSETTS=$(egrep -i "$KEYWORDS_MASSACHUSETTS" "$NEWPAGES" | egrep -iv "$KEYWORDS_MASSACHUSETTS_EXCLUDE")
  BOSTON=$(egrep -i "$KEYWORDS_BOSTON" "$NEWPAGES" | egrep -iv "$KEYWORDS_BOSTON_EXCLUDE")

  if [ "$MASSACHUSETTS" != "" ];
  then
    printf "%s" "$MASSACHUSETTS" > Massachusetts.txt
    export CATFILE="Massachusetts.txt"
    export CATNAME="Massachusetts"
    $CATEGORIZE
    rm Massachusetts.txt
    unset MASSACHUSETTS
  fi

  if [ "$BOSTON" != "" ];
  then
    printf "%s" "$BOSTON" > Boston.txt
    export CATFILE="Boston.txt"
    export CATNAME="Boston"
    $CATEGORIZE
    rm Boston.txt
    unset BOSTON
  fi

  debug_end "Massachusetts"

fi