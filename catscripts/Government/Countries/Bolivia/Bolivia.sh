#!/bin/bash

KEYWORDS_BOLIVIA="Bolivia"
KEYWORDS_BOLIVIA_ALL="$KEYWORDS_BOLIVIA"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Bolivia\n"
  fi

  BOLIVIA=`egrep -i "$KEYWORDS_BOLIVIA" newpages.txt`

  if [ "$BOLIVIA" != "" ];
  then
    printf "$BOLIVIA" > Bolivia.txt
    export CATFILE="Bolivia.txt"
    export CATNAME="Bolivia"
    $CATEGORIZE
    rm Bolivia.txt
    unset BOLIVIA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Bolivia\n"
  fi

fi