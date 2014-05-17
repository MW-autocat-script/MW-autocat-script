#!/bin/bash

KEYWORDS_BRUNEI="Brunei"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Brunei\n"
  fi

  BRUNEI=$(egrep -i "$KEYWORDS_BRUNEI" newpages.txt)

  if [ "$BRUNEI" != "" ];
  then
    printf "$BRUNEI" > Brunei.txt
    export CATFILE="Brunei.txt"
    export CATNAME="Brunei"
    $CATEGORIZE
    rm Brunei.txt
    unset BRUNEI
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Brunei\n"
  fi

fi