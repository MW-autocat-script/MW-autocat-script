#!/bin/bash

KEYWORDS_SCIENTOLOGY="scientology|scientologist|lord xenu"
KEYWORDS_SCIENTOLOGY_ALL="$KEYWORDS_SCIENTOLOGY"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Scientology\n"
  fi

  SCIENTOLOGY=`egrep -i "$KEYWORDS_SCIENTOLOGY" newpages.txt`

  if [ "$SCIENTOLOGY" != "" ];
  then
    printf "$SCIENTOLOGY" > Scientology.txt
    export CATFILE="Scientology.txt"
    export CATNAME="Scientology"
    $CATEGORIZE
    rm Scientology.txt
    unset SCIENTOLOGY
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Scientology\n"
  fi

fi