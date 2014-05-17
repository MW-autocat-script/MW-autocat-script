#!/bin/bash

KEYWORDS_TANZIA="Tanzia"
KEYWORDS_TANZIA_ALL="$KEYWORDS_TANZIA"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Tanzia\n"
  fi

  TANZIA=$(egrep -i "$KEYWORDS_TANZIA" newpages.txt)

  if [ "$TANZIA" != "" ];
  then
    printf "$TANZIA" > Tanzia.txt
    export CATFILE="Tanzia.txt"
    export CATNAME="Tanzia"
    $CATEGORIZE
    rm Tanzia.txt
    unset TANZIA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Tanzia\n"
  fi

fi