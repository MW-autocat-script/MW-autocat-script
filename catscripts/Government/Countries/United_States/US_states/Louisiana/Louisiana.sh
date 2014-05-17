#!/bin/bash

KEYWORDS_LOUISIANA="Lou(|i)siana"

egrep -i "$KEYWORDS_LOUISIANA" newpages.txt >> Louisiana.txt

LOUISIANA=$(stat --print=%s Louisiana.txt)

if [ $LOUISIANA -ne 0 ];
then
  export CATFILE="Louisiana.txt"
  export CATNAME="Louisiana"
  $CATEGORIZE
fi

rm Louisiana.txt