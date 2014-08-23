#!/bin/bash
WEBSITEDIR="./catscripts/Technology/Computers/Internet/Websites"
KEYWORDS_WEBSITE="web(| )site"
KEYWORDS_WIKIA="\bWikia(|s)\b"
KEYWORDS_WIKIASEARCH="Wikia(| )Search"
KEYWORDS_WIKIANSWERS="Wiki(| )answers|Wikia(| )answers"
KEYWORDS_WIKIA_EXCLUDE="$KEYWORDS_WIKIASEARCH|$KEYWORDS_WIKIANSWERS"
KEYWORDS_WIKIPEDIA="Wikipedia"
KEYWORDS_EBAY="\beBay"

if [ "$1" == "" ];
then

  debug_start "Websites"

  . $WEBSITEDIR/Social_networking/Socialnetworking.sh #KEYWORDS_SOCIALNETWORKING_ALL
  . $WEBSITEDIR/Search_engines/Searchengines.sh #KEYWORDS_SEARCHENGINES_ALL

  KEYWORDS_WEBSITE_EXCLUDE="$KEYWORDS_SEARCHENGINES_ALL|$KEYWORDS_SOCIALNETWORKING_ALL|$KEYWORDS_WIKIA|$KEYWORDS_WIKIANSWERS|$KEYWORDS_WIKIPEDIA|$KEYWORDS_EBAY"
  KEYWORDS_WEBSITE_ALL="$KEYWORDS_WEBSITE|$KEYWORDS_SEARCHENGINES_ALL|$KEYWORDS_SOCIALNETWORKING_ALL|$KEYWORDS_WIKIA|$KEYWORDS_WIKIANSWERS|$KEYWORDS_WIKIPEDIA|$KEYWORDS_EBAY"

  WEBSITES=$(egrep -i "$KEYWORDS_WEBSITE" "$NEWPAGES" | egrep -iv "$KEYWORDS_WEBSITE_EXCLUDE")
  WIKIA=$(egrep -i "$KEYWORDS_WIKIA" "$NEWPAGES" | egrep -iv "$KEYWORDS_WIKIA_EXCLUDE" )
  WIKIANSWERS=$(egrep -i "$KEYWORDS_WIKIANSWERS" "$NEWPAGES")
  WIKIPEDIA=$(egrep -i "$KEYWORDS_WIKIPEDIA" "$NEWPAGES")
  EBAY=$(egrep -i "$KEYWORDS_EBAY" "$NEWPAGES")

  categorize "WEBSITES" "Websites"
  categorize "WIKIA" "Wikia"
  categorize "WIKIANSWERS" "Wikianswers"
  categorize "WIKIPEDIA" "Wikipedia"
  categorize "EBAY" "eBay"

  debug_end "Websites"

else

  . $WEBSITEDIR/Social_networking/Socialnetworking.sh norun #KEYWORDS_SOCIALNETWORKING_ALL
  . $WEBSITEDIR/Search_engines/Searchengines.sh norun #KEYWORDS_SEARCHENGINES_ALL

  KEYWORDS_WEBSITE_ALL="$KEYWORDS_WEBSITE|$KEYWORDS_SEARCHENGINES_ALL|$KEYWORDS_SOCIALNETWORKING_ALL|$KEYWORDS_WIKIA|$KEYWORDS_WIKIANSWERS|$KEYWORDS_WIKIPEDIA|$KEYWORDS_EBAY"

fi

#This is here so ShellCheck won't complain about KEYWORDS_WEBSITE_ALL, which is used elsewhere

KEYWORDS_WEBSITE_ALL="$KEYWORDS_WEBSITE_ALL"



