#!/bin/bash

KEYWORDS_ACTOR_DANIELRADCLIFFE="Daniel(| )Radcliffe"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Daniel Radcliffe"

  RADCLIFFE=$(egrep -i "$KEYWORDS_ACTOR_DANIELRADCLIFFE" newpages.txt)

  if [ "$RADCLIFFE" != "" ];
  then
    printf "%s" "$RADCLIFFE" > DanielRadcliffe.txt
    export CATFILE="DanielRadcliffe.txt"
    export CATNAME="Daniel Radcliffe"
    $CATEGORIZE
    rm DanielRadcliffe.txt
    unset RADCLIFFE
  fi

  debug_end "Daniel Radcliffe"

fi