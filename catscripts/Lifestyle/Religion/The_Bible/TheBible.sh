#!/bin/bash

KEYWORDS_BIBLE="Bible|biblical|Adam(| )(&|and)(| )Eve|Book(| )of(| )Genesis|\bEden\b|Isaiah|Israelites"
KEYWORDS_BIBLE_CASESENSITIVE="\bJob\b"
KEYWORDS_BIBLE_EXCLUDE="Goliath(| )(beetle|chronicle)"

if [ "$1" == "" ];
then
  
  egrep -i "$KEYWORDS_BIBLE" newpages.txt| egrep -iv "$KEYWORDS_BIBLE_EXCLUDE" >> TheBible.txt
  egrep "$KEYWORDS_BIBLE_CASESENSITIVE" newpages.txt | egrep -iv "$KEYWORDS_BIBLE_EXCLUDE" >> TheBible.txt 

  BIBLE=`stat --print=%s TheBible.txt`

  if [ $BIBLE -ne 0 ];
  then
    export CATFILE="TheBible.txt"
    export CATNAME="The Bible"
    $CATEGORIZE
  fi

  rm TheBible.txt

fi