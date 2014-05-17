#!/bin/bash

KEYWORDS_FIJI="Fiji"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Fiji\n"
  fi

  FIJI=$(egrep -i "$KEYWORDS_FIJI" newpages.txt)

  if [ "$FIJI" != "" ];
  then
    printf "$FIJI" > Fiji.txt
    export CATFILE="Fiji.txt"
    export CATNAME="Fiji"
    $CATEGORIZE
    rm Fiji.txt
    unset FIJI
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Fiji\n"
  fi

fi