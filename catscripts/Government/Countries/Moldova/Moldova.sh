#!/bin/bash

KEYWORDS_MOLDOVA="Moldova"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Moldova\n"
  fi

  MOLDOVA=`egrep -i "$KEYWORDS_MOLDOVA" newpages.txt`

  if [ "$MOLDOVA" != "" ];
  then
    printf "$MOLDOVA" > Moldova.txt
    export CATFILE="Moldova.txt"
    export CATNAME="Moldova"
    $CATEGORIZE
    rm Moldova.txt
    unset MOLDOVA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Moldova\n"
  fi

fi