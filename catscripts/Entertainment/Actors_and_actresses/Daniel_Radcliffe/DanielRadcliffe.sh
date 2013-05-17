#!/bin/bash

export KEYWORDS_ACTOR_DANIELRADCLIFFE="Daniel(| )Radcliffe"

egrep -i "$KEYWORDS_ACTOR_DANIELRADCLIFFE" newpages.txt >> DanielRadcliffe.txt

RADCLIFFE=`stat --print=%s DanielRadcliffe.txt`

if [ $RADCLIFFE -ne 0 ];
then
  export CATFILE="DanielRadcliffe.txt"
  export CATNAME="Daniel Radcliffe"
  $CATEGORIZE
fi

rm DanielRadcliffe.txt
