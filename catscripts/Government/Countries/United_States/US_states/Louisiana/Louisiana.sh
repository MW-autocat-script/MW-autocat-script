#!/bin/bash

KEYWORDS_LOUISIANA="Lou(|i)siana"

if [ "$1" == "" ];
then

  debug_start "Louisiana"

  LOUISIANA=$(egrep -i "$KEYWORDS_LOUISIANA" "$NEWPAGES")

  if [ "$LOUISIANA" != "" ];
  then
    printf "%s" "$LOUISIANA" > Louisiana.txt
    export CATFILE="Louisiana.txt"
    export CATNAME="Louisiana"
    $CATEGORIZE
    rm Louisiana.txt
    unset LOUISIANA
  fi

  debug_end "Louisiana"

fi