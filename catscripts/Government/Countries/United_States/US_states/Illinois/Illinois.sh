#!/bin/bash

KEYWORDS_ILLINOIS="Illinois"
KEYWORDS_SPRINGFIELD="Springfield(|,)(| )Illinois"
KEYWORDS_CHICAGO="Chicago"
KEYWORDS_ILLINOIS_EXCLUDE="$KEYWORDS_CHICAGO|$KEYWORDS_SPRINGFIELD"
KEYWORDS_CHICAGO_EXCLUDE="Chicago(| )Bulls"
KEYWORDS_ILLINOIS_ALL="$KEYWORDS_ILLINOIS|$KEYWORDS_CHICAGO|$KEYWORDS_SPRINGFIELD"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Illinois"

  ILLINOIS=$(egrep -i "$KEYWORDS_ILLINOIS" "$NEWPAGES" | egrep -iv "$KEYWORDS_ILLINOIS_EXCLUDE")
  SPRINGFIELD=$(egrep -i "$KEYWORDS_SPRINGFIELD" "$NEWPAGES")
  CHICAGO=$(egrep -i "$KEYWORDS_CHICAGO" "$NEWPAGES" | egrep -iv "$KEYWORDS_CHICAGO_EXCLUDE")

  if [ "$ILLINOIS" != "" ];
  then
    printf "%s" "$ILLINOIS" > Illinois.txt
    export CATFILE="Illinois.txt"
    export CATNAME="Illinois"
    $CATEGORIZE
    rm Illinois.txt
    unset ILLINOIS
  fi

  if [ "$SPRINGFIELD" != "" ];
  then
    printf "%s" "$SPRINGFIELD" > Springfield.txt
    export CATFILE="Springfield.txt"
    export CATNAME="Springfield, Illinois"
    $CATEGORIZE
    rm Springfield.txt
    unset SPRINGFIELD
  fi

  if [ "$CHICAGO" != "" ];
  then
    printf "%s" "$CHICAGO" > Chicago.txt
    export CATFILE="Chicago.txt"
    export CATNAME="Chicago"
    $CATEGORIZE
    rm Chicago.txt
    unset CHICAGO
  fi

  debug_end "Illinois"

fi