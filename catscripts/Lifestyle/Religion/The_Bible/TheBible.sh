#!/bin/bash

KEYWORDS_BIBLE="Bible|biblical"

egrep -i "$KEYWORDS_BIBLE" newpages.txt >> TheBible.txt

BIBLE=`stat --print=%s TheBible.txt`

if [ $BIBLE -ne 0 ];
then
  export CATFILE="TheBible.txt"
  export CATNAME="The Bible"
  $CATEGORIZE
fi

rm TheBible.txt