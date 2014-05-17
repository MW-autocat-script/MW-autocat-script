#!/bin/bash

KEYWORDS_ACTOR_ROBERTPATTINSON="Robert(| )Pattinson"

if [ "$1" == "" ]; #Normal operation
then

  PATTINSON=$(egrep -i "$KEYWORDS_ACTOR_ROBERTPATTINSON" newpages.txt)

  if [ "$PATTINSON" != "" ];
  then
    egrep -i "$KEYWORDS_ACTOR_ROBERTPATTINSON" newpages.txt > RobertPattinson.txt
    export CATFILE="RobertPattinson.txt"
    export CATNAME="Robert Pattinson"
    $CATEGORIZE
    rm RobertPattinson.txt
    unset PATTINSON
  fi

fi
