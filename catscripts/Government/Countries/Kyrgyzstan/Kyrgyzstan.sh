#!/bin/bash

KEYWORDS_KYRGYZSTAN="Kyrgyzstan"
KEYWORDS_KYRGYZSTAN_ALL="$KEYWORDS_KYRGYZSTAN"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Kyrgyzstan\n"
  fi

  KYRGYZSTAN=$(egrep -i "$KEYWORDS_KYRGYZSTAN" newpages.txt)

  if [ "$KYRGYZSTAN" != "" ];
  then
    printf "$KYRGYZSTAN" > Kyrgyzstan.txt
    export CATFILE="Kyrgyzstan.txt"
    export CATNAME="Kyrgyzstan"
    $CATEGORIZE
    rm Kyrgyzstan.txt
    unset KYRGYZSTAN
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Kyrgyzstan\n"
  fi

fi