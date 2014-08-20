#!/bin/bash

KEYWORDS_ACRONYMS="acronym|initialism|What does [A-Z]{2,} stand(|s) for|What do the initials [A-Z]{2,} stand(|s) for"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Acronyms"

  ACRONYMS=$(egrep -i "$KEYWORDS_ACRONYMS" "$NEWPAGES")

  if [ "$ACRONYMS" != "" ];
  then
    printf "%s" "$ACRONYMS" > Acronyms.txt
    export CATFILE="Acronyms.txt"
    export CATNAME="Acronyms"
    $CATEGORIZE
    rm Acronyms.txt
    unset ACRONYMS
  fi

  debug_end "Acronyms"

fi