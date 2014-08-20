#!/bin/bash

KEYWORDS_WISCONSIN="Wisconsin"
KEYWORDS_MILWAUKEE="Milwaukee"
KEYWORDS_WISCONSIN_EXCLUDE="$KEYWORDS_MILWAUKEE"
KEYWORDS_WISCONSIN_ALL="$KEYWORDS_WISCONSIN|$KEYWORDS_MILWAUKEE"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Wisconsin"

  WISCONSIN=$(egrep -i "$KEYWORDS_WISCONSIN" "$NEWPAGES" | egrep -iv "$KEYWORDS_WISCONSIN_EXCLUDE")
  MILWAUKEE=$(egrep -i "$KEYWORDS_MILWAUKEE" "$NEWPAGES")

  if [ "$WISCONSIN" != "" ];
  then
    printf "%s" "$WISCONSIN" > Wisconsin.txt
    export CATFILE="Wisconsin.txt"
    export CATNAME="Wisconsin"
    $CATEGORIZE
    rm Wisconsin.txt
    unset WISCONSIN
  fi

  if [ "$MILWAUKEE" != "" ];
  then
    printf "%s" "$MILWAUKEE" > Milwaukee.txt
    export CATFILE="Milwaukee.txt"
    export CATNAME="Milwaukee"
    $CATEGORIZE
    rm Milwaukee.txt
    unset MILWAUKEE
  fi

  debug_end "Wisconsin"

fi