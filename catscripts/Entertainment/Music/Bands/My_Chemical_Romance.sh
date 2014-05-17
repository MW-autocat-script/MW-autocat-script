#!/bin/bash

KEYWORDS_MYCHEMICALROMANCE="My(| )Chemical(| )Romance|\bMCR\b"

egrep -i "$KEYWORDS_MYCHEMICALROMANCE" newpages.txt >> MCR.txt

MCR=$(stat --print=%s MCR.txt)

if [ $MCR -ne 0 ];
then
  export CATFILE="MCR.txt"
  export CATNAME="My Chemical Romance"
  $CATEGORIZE
fi

rm MCR.txt