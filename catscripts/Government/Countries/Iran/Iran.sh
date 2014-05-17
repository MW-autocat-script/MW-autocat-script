#!/bin/bash

KEYWORDS_IRAN="\bIran|Tehran"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Iran\n"
  fi

  IRAN=$(egrep -i "$KEYWORDS_IRAN" newpages.txt)

  if [ "$IRAN" != "" ];
  then
    printf "$IRAN" > Iran.txt
    export CATFILE="Iran.txt"
    export CATNAME="Iran"
    $CATEGORIZE
    rm Iran.txt
    unset IRAN
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Iran\n"
  fi

fi