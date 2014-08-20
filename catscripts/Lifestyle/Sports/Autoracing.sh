#!/bin/bash

KEYWORDS_AUTORACING="(auto|car|truck|vehicle)_(race|racing)"
KEYWORDS_NASCAR="NASCAR|Jeff(| )Gordon|Dale(| )Earnhardt|Kyle(| )Petty"
KEYWORDS_AUTORACING_EXCLUDE="$KEYWORDS_NASCAR"

if [ "$1" == "" ];
then

  debug_start "Auto racing"

  AUTORACING=$(egrep -i "$KEYWORDS_AUTORACING" "$NEWPAGES" | egrep -iv "$KEYWORDS_AUTORACING_EXCLUDE")
  NASCAR=$(egrep -i "$KEYWORDS_NASCAR" "$NEWPAGES")

  if [ "$AUTORACING" != "" ];
  then
    printf "%s" "$AUTORACING" > AutoRacing.txt
    export CATFILE="AutoRacing.txt"
    export CATNAME="Auto racing"
    $CATEGORIZE
    rm AutoRacing.txt
    unset AUTORACING
  fi

  if [ "$NASCAR" != "" ];
  then
    printf "%s" "$NASCAR" > NASCAR.txt
    export CATFILE="NASCAR.txt"
    export CATNAME="NASCAR"
    $CATEGORIZE
    rm NASCAR.txt
    unset NASCAR
  fi

  debug_end "Auto racing"

fi