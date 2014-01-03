#!/bin/bash

KEYWORDS_WASHINGTON="Washington"
KEYWORDS_WASHINGTON_EXCLUDE="(George|General)(| )Washington|Washington(|,)(| )D(|\.)C(|\.)|District(| )of(| )columbia"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Washington\n"
  fi

  WASHINGTON=`egrep -i "$KEYWORDS_WASHINGTON" newpages.txt | egrep -iv "$KEYWORDS_WASHINGTON_EXCLUDE"`

  if [ "$WASHINGTON" != "" ];
  then
    printf "$WASHINGTON" > Washington.txt
    export CATFILE="Washington.txt"
    export CATNAME="Washington"
    $CATEGORIZE
    rm Washington.txt
    unset WASHINGTON
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Washington\n"
  fi

fi