#!/bin/bash

KEYWORDS_OKLAHOMA="Oklahoma|Tulsa"
KEYWORDS_OKLAHOMACITY="Oklahoma(| )City"
KEYWORDS_OKLAHOMA_EXCLUDE="$KEYWORDS_OKLAHOMACITY"

if [ "$1"  == "" ]; #Normal operation
then

  debug_start "Oklahoma"

  OKLAHOMA=$(egrep -i "$KEYWORDS_OKLAHOMA" "$NEWPAGES" | egrep -iv "$KEYWORDS_OKLAHOMA_EXCLUDE")
  OKCITY=$(egrep -i "$KEYWORDS_OKLAHOMACITY" "$NEWPAGES")

  if [ "$OKLAHOMA" != "" ];
  then
    printf "%s" "$OKLAHOMA" > Oklahoma.txt
    export CATFILE="Oklahoma.txt"
    export CATNAME="Oklahoma"
    $CATEGORIZE
    rm Oklahoma.txt
    unset OKLAHOMA
  fi

  if [ "$OKCITY" != "" ];
  then
    printf "%s" "$OKCITY" > OKCity.txt
    export CATFILE="OKCity.txt"
    export CATNAME="Oklahoma City"
    $CATEGORIZE
    rm OKCity.txt
    unset OKCITY
  fi

  debug_end "Oklahoma"

fi