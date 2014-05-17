#!/bin/bash

KEYWORDS_AUTORACING="(auto|car|truck|vehicle)_(race|racing)"
KEYWORDS_NASCAR="NASCAR|Jeff(| )Gordon|Dale(| )Earnhardt|Kyle(| )Petty"
KEYWORDS_AUTORACING_EXCLUDE="$KEYWORDS_NASCAR"

egrep -i "$KEYWORDS_AUTORACING" newpages.txt | egrep -iv "$KEYWORDS_AUTORACING_EXCLUDE" >> AutoRacing.txt
egrep -i "$KEYWORDS_NASCAR" newpages.txt >> NASCAR.txt

AUTORACING=$(stat --print=%s AutoRacing.txt)
NASCAR=$(stat --print=%s NASCAR.txt)

if [ $AUTORACING -ne 0 ];
then
  export CATFILE="AutoRacing.txt"
  export CATNAME="Auto racing"
  $CATEGORIZE
fi

if [ $NASCAR -ne 0 ];
then
  export CATFILE="NASCAR.txt"
  export CATNAME="NASCAR"
  $CATEGORIZE
fi

rm NASCAR.txt
rm AutoRacing.txt