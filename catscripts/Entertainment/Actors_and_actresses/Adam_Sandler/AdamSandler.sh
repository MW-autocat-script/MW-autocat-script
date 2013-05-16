#!/bin/bash

export KEYWORDS_ACTOR_ADAMSANDLER="Adam(| )Sandler"

egrep -i "$KEYWORDS_ACTOR_ADAMSANDLER" newpages.txt >> AdamSandler.txt

SANDLER=`stat --print=%s AdamSandler.txt`

if [ $SANDLER -ne 0 ];
then
  export CATFILE="AdamSandler.txt"
  export CATNAME="Adam Sandler"
  $CATEGORIZE
fi

rm AdamSandler.txt
