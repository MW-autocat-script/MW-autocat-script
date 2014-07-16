#!/bin/bash

KEYWORDS_JLS="\bJLS|Jack(| )the(| )Lad(| )Swing"

if [ "$1" == "" ];
then

  debug_start "JLS"

  JLS=$(egrep -i "$KEYWORDS_JLS" newpages.txt)

  if [ "$JLS" != "" ];
  then
    printf "%s" "$JLS" > JLS.txt
    export CATFILE="JLS.txt"
    export CATNAME="JLS"
    $CATEGORIZE
    rm JLS.txt
    unset JLS
  fi

  debug_end "JLS"

fi