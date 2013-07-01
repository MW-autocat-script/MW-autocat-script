#!/bin/bash

KEYWORDS_IDAHO="idaho|\bin ID\b|, ID\b"

egrep -i "$KEYWORDS_IDAHO" newpages.txt >> Idaho.txt

IDAHO=`stat --print=%s Idaho.txt`

if [ $IDAHO -ne 0 ];
then
  export CATFILE="Idaho.txt"
  export CATNAME="Idaho"
  $CATEGORIZE
fi

rm Idaho.txt