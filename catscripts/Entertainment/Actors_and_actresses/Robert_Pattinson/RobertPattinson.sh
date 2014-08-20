#!/bin/bash

KEYWORDS_ACTOR_ROBERTPATTINSON="Robert(| )Pattinson"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Robert Pattinson"

  PATTINSON=$(egrep -i "$KEYWORDS_ACTOR_ROBERTPATTINSON" "$NEWPAGES")

  if [ "$PATTINSON" != "" ];
  then
    printf "%s" "$PATTINSON" > RobertPattinson.txt
    export CATFILE="RobertPattinson.txt"
    export CATNAME="Robert Pattinson"
    $CATEGORIZE
    rm RobertPattinson.txt
    unset PATTINSON
  fi

  debug_end "Robert Pattinson"

fi
