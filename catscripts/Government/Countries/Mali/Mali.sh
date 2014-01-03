#!/bin/bash

KEYWORDS_MALI="Mali\b"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Mali\n"
  fi

  MALI=`egrep -i "$KEYWORDS_MALI" newpages.txt`

  if [ "$MALI" != "" ];
  then
    printf "$MALI" > Mali.txt
    export CATFILE="Mali.txt"
    export CATNAME="Mali"
    $CATEGORIZE
    rm Mali.txt
    unset MALI
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Mali\n"
  fi

fi