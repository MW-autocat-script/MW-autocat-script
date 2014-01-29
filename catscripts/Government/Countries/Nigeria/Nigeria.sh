#!/bin/bash

KEYWORDS_NIGERIA="Nigeria"
KEYWORDS_NIGERIA_ALL="Nigeria"

if [ "$1" == "" ];
then
  
  if [ "$DEBUG" == "" ];
  then
    printf "Starting Nigeria\n"
  fi

  NIGERIA=`egrep -i "$KEYWORDS_NIGERIA" newpages.txt`

  if [ "$NIGERIA" != "" ];
  then
    printf "$NIGERIA" > Nigeria.txt
    export CATFILE="Nigeria.txt"
    export CATNAME="Nigeria"
    $CATEGORIZE
    rm Nigeria.txt
    unset NIGERIA
  fi

  if [ "$DEBUG" == "" ];
  then
    printf "Finishing Nigeria\n"
  fi

fi