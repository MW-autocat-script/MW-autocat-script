#!/bin/bash

KEYWORDS_NEBRASKA="Nebraska"

egrep -i "$KEYWORDS_NEBRASKA" newpages.txt >> Nebraska.txt

NEBRASKA=$(stat --print=%s Nebraska.txt)

if [ $NEBRASKA -ne 0 ];
then
  export CATFILE="Nebraska.txt"
  export CATNAME="Nebraska"
  $CATEGORIZE
fi

rm Nebraska.txt