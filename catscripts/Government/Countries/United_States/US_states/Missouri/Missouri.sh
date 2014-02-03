#!/bin/bash

KEYWORDS_MISSOURI="Missouri"

if [ "$1" == "" ];
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Missouri\n"
  fi

  MISSOURI="$(egrep -i "$KEYWORDS_MISSOURI" newpages.txt)"

  if [ "$MISSOURI" != "" ];
  then
    printf "%s" "$MISSOURI" > Missouri.txt
    export CATFILE="Missouri.txt"
    export CATNAME="Missouri"
    $CATEGORIZE
    rm Missouri.txt
    unset MISSOURI
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Missouri\n"
  fi

fi