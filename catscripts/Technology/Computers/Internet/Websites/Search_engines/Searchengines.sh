#!/bin/bash

SEARCHENGINEDIR="./catscripts/Technology/Computers/Internet/Websites/Search_engines"
KEYWORDS_SEARCHENGINES="Search(| )engine"

if [ "$1" == "" ];
then

  debug_start "Search engines"

  . $SEARCHENGINEDIR/Google/Google.sh #KEYWORDS_GOOGLE_ALL
  . $SEARCHENGINEDIR/Wikia_Search/WikiaSearch.sh #KEYWORDS_WIKIASEARCH

  KEYWORDS_SEARCHENGINES_EXCLUDE="$KEYWORDS_GOOGLE_ALL|$KEYWORDS_WIKIASEARCH"
  KEYWORDS_SEARCHENGINES_ALL="$KEYWORDS_SEARCHENGINES|$KEYWORDS_GOOGLE_ALL|$KEYWORDS_WIKIASEARCH"

  SEARCHENGINES=$(egrep -i "$KEYWORDS_SEARCHENGINES" newpages.txt | egrep -iv "$KEYWORDS_SEARCHENGINES_EXCLUDE")

  if [ "$SEARCHENGINES" != "" ];
  then
    printf "%s" "$SEARCHENGINES" > Searchengines.txt
    export CATFILE="Searchengines.txt"
    export CATNAME="Search engines"
    $CATEGORIZE
    rm Searchengines.txt
    unset SEARCHENGINES
  fi

  debug_end "Search engines"

else

  . $SEARCHENGINEDIR/Google/Google.sh norun #KEYWORDS_GOOGLE_ALL
  . $SEARCHENGINEDIR/Wikia_Search/WikiaSearch.sh norun #KEYWORDS_WIKIASEARCH

  KEYWORDS_SEARCHENGINES_ALL="$KEYWORDS_SEARCHENGINES|$KEYWORDS_GOOGLE_ALL|$KEYWORDS_WIKIASEARCH"

fi

#This is so ShellCheck doesn't complain about KEYWORDS_SEARCHENGINES_ALL, which is used elsewhere

KEYWORDS_SEARCHENGINES_ALL="$KEYWORDS_SEARCHENGINES_ALL"