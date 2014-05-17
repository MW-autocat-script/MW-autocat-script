#!/bin/bash

KEYWORDS_DITLOIDS="^[0-9]{1,}=[a-z]{1,1}\s|^[0-9]{1,}= [a-z]{1,1}\s|^[0-9]{1,} = [a-z]{1,1}\s|^[0-9]{1,} =[a-z]{1,1}\s|ditloid"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Ditloids\n"
  fi

  DITLOIDS=$(egrep -i "$KEYWORDS_DITLOIDS" newpages.txt)

  if [ "$DITLOIDS" != "" ];
  then
    printf "$DITLOIDS" > Ditloids.txt
    export CATFILE="Ditloids.txt"
    export CATNAME="Ditloids"
    $CATEGORIZE
    rm Ditloids.txt
    unset DITLOIDS
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Completed Ditloids\n"
  fi

fi