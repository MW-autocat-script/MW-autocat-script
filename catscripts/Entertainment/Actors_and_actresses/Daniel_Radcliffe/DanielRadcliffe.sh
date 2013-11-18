#!/bin/bash

KEYWORDS_ACTOR_DANIELRADCLIFFE="Daniel(| )Radcliffe"

if [ "$1" == "" ]; #Normal operation
then

  RADCLIFFE=`egrep -i "$KEYWORDS_ACTOR_DANIELRADCLIFFE" newpages.txt`

  if [ "$RADCLIFFE" != "" ];
  then
    egrep -i "$KEYWORDS_ACTOR_DANIELRADCLIFFE" newpages.txt >> DanielRadcliffe.txt
    export CATFILE="DanielRadcliffe.txt"
    export CATNAME="Daniel Radcliffe"
    $CATEGORIZE
    rm DanielRadcliffe.txt
    unset RADCLIFFE
  fi
fi