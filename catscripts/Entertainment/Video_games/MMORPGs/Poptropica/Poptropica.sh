#!/bin/bash

export KEYWORDS_MMORPG_POPTROPICA="poptropica|potropica|poptopica"

egrep -i "$KEYWORDS_MMORPG_POPTROPICA" newpages.txt > Poptropica.txt

POPTROPICA=`stat --print=%s Poptropica.txt`

if [ $POPTROPICA -ne 0 ];
then
  export CATFILE="Poptropica.txt"
  export CATNAME="Poptropica"
  $CATEGORIZE
fi

rm Poptropica.txt