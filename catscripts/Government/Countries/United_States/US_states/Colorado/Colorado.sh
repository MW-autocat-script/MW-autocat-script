#!/bin/bash

KEYWORDS_COLORADO="Colorado|,(| )CO( |$)"
KEYWORDS_DENVER="Denver"
KEYWORDS_COLORADO_EXCLUDE="$KEYWORDS_DENVER"
KEYWORDS_DENVER_EXCLUDE="Denver(| )Broncos|Denver(| )Nuggets|John(| )Denver"
KEYWORDS_COLORADO_ALL="$KEYWORDS_COLORADO|$KEYWORDS_DENVER"

if [ "$1" == "" ];
then

  debug_start "Colorado"

  COLORADO=$(egrep -i "$KEYWORDS_COLORADO" "$NEWPAGES" | egrep -iv "$KEYWORDS_COLORADO_EXCLUDE")
  DENVER=$(egrep -i "$KEYWORDS_DENVER" "$NEWPAGES" | egrep -iv "$KEYWORDS_DENVER_EXCLUDE")

  if [ "$COLORADO" != "" ];
  then
    printf "%s" "$COLORADO" > Colorado.txt
    export CATFILE="Colorado.txt"
    export CATNAME="Colorado"
    $CATEGORIZE
    rm Colorado.txt
    unset COLORADO
  fi

  if [ "$DENVER" != "" ];
  then
    printf "%s" "$DENVER" > Denver.txt
    export CATFILE="Denver.txt"
    export CATNAME="Denver, Colorado"
    $CATEGORIZE
    rm Denver.txt
    unset DENVER
  fi

  debug_end "Colorado"

fi