#!/bin/bash

KEYWORDS_BIBLE="Bible|biblical|Adam(| )(&|and)(| )Eve|Book(| )of(| )Genesis|\bEden\b|Isaiah|Israelites|Goliath|Philistine|Tribe(|s)(| )of(| )Judah|Leviticus|Deuteronomy"
KEYWORDS_BIBLE_CASESENSITIVE="\bJob\b"
KEYWORDS_BIBLE_EXCLUDE="Goliath(| )(beetle|chronicle)"
KEYWORDS_BIBLE_ALL="$KEYWORDS_BIBLE|$KEYWORDS_BIBLE_CASESENSITIVE"

if [ "$1" == "" ];
then
  
  debug_start "The Bible"

  BIBLE=$(egrep -i "$KEYWORDS_BIBLE" newpages.txt| egrep -iv "$KEYWORDS_BIBLE_EXCLUDE" && egrep "$KEYWORDS_BIBLE_CASESENSITIVE" newpages.txt | egrep -iv "$KEYWORDS_BIBLE_EXCLUDE")

  if [ "$BIBLE" != "" ];
  then
    printf "%s" "$BIBLE" > TheBible.txt
    export CATFILE="TheBible.txt"
    export CATNAME="The Bible"
    $CATEGORIZE
    rm TheBible.txt
    unset BIBLE
  fi

  debug_end "The Bible"

fi