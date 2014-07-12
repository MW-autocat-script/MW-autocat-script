#!/bin/bash

KEYWORDS_UGANDA="Uganda|Kampala"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Uganda"

  UGANDA=$(egrep -i "$KEYWORDS_UGANDA" newpages.txt)

  if [ "$UGANDA" != "" ];
  then
    printf "$UGANDA" > Uganda.txt
    export CATFILE="Uganda.txt"
    export CATNAME="Uganda"
    $CATEGORIZE
    rm Uganda.txt
    unset UGANDA
  fi

  debug_end "Uganda"

fi