#!/bin/bash

KEYWORDS_LAOS="Laos"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Laos\n"
  fi

  LAOS=`egrep -i "$KEYWORDS_LAOS" newpages.txt`

  if [ "$LAOS" != "" ];
  then
    printf "$LAOS" > Laos.txt
    export CATFILE="Laos.txt"
    export CATNAME="Laos"
    $CATEGORIZE
    rm Laos.txt
    unset LAOS
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Laos\n"
  fi

fi