#!/bin/bash

KEYWORDS_ACRONYMS="acronym|initialism|What does [A-Z]{2,} stand(|s) for|What do the initials [A-Z]{2,} stand(|s) for"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Acronyms\n" 
  fi

  ACRONYMS=`egrep -i "$KEYWORDS_ACRONYMS" newpages.txt`

  if [ "$ACRONYMS" != "" ];
  then
    printf "$ACRONYMS" > Acronyms.txt
    export CATFILE="Acronyms.txt"
    export CATNAME="Acronyms"
    $CATEGORIZE
    rm Acronyms.txt
    unset ACRONYMS
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Acronyms\n" 
  fi

fi