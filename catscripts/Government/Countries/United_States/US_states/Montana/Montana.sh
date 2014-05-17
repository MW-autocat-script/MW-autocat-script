#!/bin/bash

KEYWORDS_MONTANA="Montana"
KEYWORDS_MONTANA_EXCLUDE="Hanna(|h)(| )Montana"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Montana\n"
  fi

  MONTANA=$(egrep -i "$KEYWORDS_MONTANA" newpages.txt | egrep -iv "$KEYWORDS_MONTANA_EXCLUDE")

  if [ "$MONTANA" != "" ];
  then
    printf "$MONTANA" > Montana.txt
    export CATFILE="Montana.txt"
    export CATNAME="Montana"
    $CATEGORIZE
    rm Montana.txt
    unset MONTANA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Montana\n"
  fi

fi