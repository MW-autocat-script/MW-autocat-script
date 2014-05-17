#!/bin/bash

KEYWORDS_ALGEBRA="Algebra"

egrep -i "$KEYWORDS_ALGEBRA" newpages.txt >> Algebra.txt

ALGEBRA=$(stat --print=%s Algebra.txt)

if [ $ALGEBRA -ne 0 ];
then
  export CATFILE="Algebra.txt"
  export CATNAME="Algebra"
  $CATEGORIZE
fi

rm Algebra.txt