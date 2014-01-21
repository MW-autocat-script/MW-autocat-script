#!/bin/bash

KEYWORDS_SERBIA="Serbia"
KEYWORDS_SERBIA_EXCLUDE="in(| )Serbian|Serbian(| )word"
KEYWORDS_SERBIA_ALL="$KEYWORDS_SERBIA"

if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Serbia\n"
  fi

  SERBIA=`egrep -i "$KEYWORDS_SERBIA" newpages.txt | egrep -iv "$KEYWORDS_SERBIA_EXCLUDE"`

  if [ "$SERBIA" != "" ];
  then
    printf "$SERBIA" > Serbia.txt
    export CATFILE="Serbia.txt"
    export CATNAME="Serbia"
    $CATEGORIZE
    rm Serbia.txt
    unset SERBIA
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Serbia\n"
  fi

fi