#!/bin/bash

KEYWORDS_POLIO="Polio"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Polio\n"
  fi

  POLIO=`egrep -i "$KEYWORDS_POLIO" newpages.txt`

  if [ "$POLIO" != "" ];
  then
    printf "$POLIO" > Polio.txt
    export CATFILE="Polio.txt"
    export CATNAME="Polio"
    $CATEGORIZE
    rm Polio.txt
    unset POLIO
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Polio\n"
  fi

fi