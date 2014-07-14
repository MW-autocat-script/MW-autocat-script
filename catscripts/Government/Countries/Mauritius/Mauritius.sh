#!/bin/bash

KEYWORDS_MAURITIUS="Mauriti(us|an)"

if [ "$1" == "" ];
then

  debug_start "Mauritius"

  MAURITIUS=$(egrep -i "$KEYWORDS_MAURITIUS" newpages.txt)

  if [ "$MAURITIUS" != "" ];
  then
    printf "%s" "$MAURITIUS" > Mauritius.txt
    export CATFILE="Mauritius.txt"
    export CATNAME="Mauritius"
    $CATEGORIZE
    rm Mauritius.txt
    unset MAURITIUS
  fi

  debug_end "Mauritius"

fi