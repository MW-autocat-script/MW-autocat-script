#!/bin/bash

SEARCHENGINEDIR="./catscripts/Technology/Computers/Internet/Websites/Search_engines"

. $SEARCHENGINEDIR/Google/Google.sh
. $SEARCHENGINEDIR/Wikia_Search/WikiaSearch.sh

KEYWORDS_SEARCHENGINES="Search(| )engine"
KEYWORDS_SEARCHENGINES_EXCLUDE="$KEYWORDS_GOOGLE|$KEYWORDS_WIKIASEARCH"

egrep -i "$KEYWORDS_SEARCHENGINES" newpages.txt | egrep -iv "$KEYWORDS_SEARCHENGINES_EXCLUDE" >> Searchengines.txt

SEARCHENGINES=`stat --print=%s Searchengines.txt`

if [ $SEARCHENGINES -ne 0 ];
then
  export CATFILE="Searchengines.txt"
  export CATNAME="Search engines"
  $CATEGORIZE
fi

rm Searchengines.txt