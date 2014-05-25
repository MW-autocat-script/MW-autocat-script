#!/bin/bash

KEYWORDS_AUSTRIA="Austria"
KEYWORDS_AUSTRIA_ALL="$KEYWORDS_AUSTRIA"

if [ "$1" == "" ];
then
  
  debug_start "Austria"

  AUSTRIA=$(egrep -i "$KEYWORDS_AUSTRIA" newpages.txt)

  if [ "$AUSTRIA" != "" ];
  then
    printf "%s" "$AUSTRIA" > Austria.txt
    export CATFILE="Austria.txt"
    export CATNAME="Austria"
    $CATEGORIZE
    rm Austria.txt
    unset AUSTRIA
  fi

fi