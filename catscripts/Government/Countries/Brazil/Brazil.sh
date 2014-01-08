#!/bin/bash

KEYWORDS_BRAZIL="Brazil"
KEYWORDS_BRAZIL_ALL="$KEYWORDS_BRAZIL"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Brazil\n"
  fi

  BRAZIL=`egrep -i "$KEYWORDS_BRAZIL" newpages.txt`

  if [ "$BRAZIL" != "" ];
  then
    printf "$BRAZIL" > Brazil.txt
    export CATFILE="Brazil.txt"
    export CATNAME="Brazil"
    $CATEGORIZE
    rm Brazil.txt
    unset BRAZIL
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Brazil\n"
  fi

fi