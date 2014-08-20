#!/bin/bash

KEYWORDS_APPALACHIAN="Appalachian"

if [ "$1" == "" ];
then
  
  debug_start "Appalachian Mountains"

  APPALACHIAN=$(egrep -i "$KEYWORDS_APPALACHIAN" "$NEWPAGES")

  if [ "$APPALACHIAN" != "" ];
  then
    printf "%s" "$APPALACHIAN" > Appalachian.txt
    export CATFILE="Appalachian.txt"
    export CATNAME="Appalachian Mountains"
    $CATEGORIZE
    rm Appalachian.txt
    unset APPALACHIAN
  fi

  debug_end "Appalachian Mountains"

fi