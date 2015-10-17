#!/bin/bash

KEYWORDS_BIBLE="Bible|biblical|Adam(| )(&|and)(| )Eve|Book(| )of(| )(Genesis|Proverbs)|\bEden\b|Isaiah|Israelites|Goliath|Philistine|Tribe(|s)(| )of(| )Judah|Leviticus|Deuteronomy|King(| )James(| )Version"
KEYWORDS_BIBLE_CASESENSITIVE="\bJob\b"
KEYWORDS_BIBLE_EXCLUDE="Goliath(| )(beetle|chronicle)"
KEYWORDS_BIBLE_ALL="$KEYWORDS_BIBLE|$KEYWORDS_BIBLE_CASESENSITIVE"

if [ "$1" == "" ];
then
  
  debug_start "The Bible"

  BIBLE=$(egrep -i "$KEYWORDS_BIBLE" "$NEWPAGES"| egrep -iv "$KEYWORDS_BIBLE_EXCLUDE"; egrep "$KEYWORDS_BIBLE_CASESENSITIVE" "$NEWPAGES" | egrep -iv "$KEYWORDS_BIBLE_EXCLUDE")

  categorize "BIBLE" "The Bible"

  debug_end "The Bible"

fi