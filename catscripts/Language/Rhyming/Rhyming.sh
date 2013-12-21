#!/bin/bash

KEYWORDS_RHYMING="rhyme|rhyming"
KEYWORDS_RHYMING_EXCLUDE="nursery(| )rhyme"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Rhyming\n"
  fi

  RHYMES=`egrep -i "$KEYWORDS_RHYMING" newpages.txt | egrep -iv "$KEYWORDS_RHYMING_EXCLUDE"`

  if [ "$RHYMES" != "" ];
  then
    printf "$RHYMES" > Rhyming.txt
    export CATFILE="Rhymes.txt"
    export CATNAME="Rhyming"
    $CATEGORIZE
    rm Rhyming.txt
    unset RHYMES
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Rhyming\n"
  fi

fi
