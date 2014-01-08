#!/bin/bash

KEYWORDS_ASTHMA="Asthma"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Asthma\n"
  fi

  ASTHMA=`egrep -i "$KEYWORDS_ASTHMA" newpages.txt`

  if [ "$ASTHMA" != "" ];
  then
    printf "$ASTHMA" > Asthma.txt
    export CATFILE="Asthma.txt"
    export CATNAME="Asthma"
    $CATEGORIZE
    rm Asthma.txt
    unset ASTHMA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Asthma\n"
  fi

fi