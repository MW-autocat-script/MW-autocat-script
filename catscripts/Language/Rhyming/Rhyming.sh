#!/bin/bash

KEYWORDS_RHYMING="rhyme|rhyming"
KEYWORDS_RHYMING_EXCLUDE="nursery(| )rhyme"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Rhyming"

  RHYMES=$(egrep -i "$KEYWORDS_RHYMING" newpages.txt | egrep -iv "$KEYWORDS_RHYMING_EXCLUDE")

  if [ "$RHYMES" != "" ];
  then
    printf "%s" "$RHYMES" > Rhyming.txt
    export CATFILE="Rhymes.txt"
    export CATNAME="Rhyming"
    $CATEGORIZE
    rm Rhyming.txt
    unset RHYMES
  fi

  debug_end "Rhyming"

fi
