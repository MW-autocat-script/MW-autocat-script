#!/bin/bash

KEYWORDS_ALGEBRA="Algebra"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Algebra"

  ALGEBRA=$(egrep -i "$KEYWORDS_ALGEBRA" newpages.txt)

  if [ "$ALGEBRA" != "" ];
  then
    printf "%s" "$ALGEBRA" > Algebra.txt
    export CATFILE="Algebra.txt"
    export CATNAME="Algebra"
    $CATEGORIZE
    rm Algebra.txt
    unset ALGEBRA
  fi

  debug_end "Algebra"

fi