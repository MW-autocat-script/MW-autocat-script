#!/bin/bash

KEYWORDS_FINLAND="Finland|Helsinki"
KEYWORDS_FINLAND_ALL="$KEYWORDS_FINLAND"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Finland\n"
  fi

  FINLAND=`egrep -i "$KEYWORDS_FINLAND" newpages.txt`

  if [ "$FINLAND" != "" ];
  then
    printf "$FINLAND" > Finland.txt
    export CATFILE="Finland.txt"
    export CATNAME="Finland"
    $CATEGORIZE
    rm Finland.txt
    unset FINLAND
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Finland\n"
  fi

fi