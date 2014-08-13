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

  WEBSITES=$(egrep -i "$KEYWORDS_WEBSITE" newpages.txt | egrep -iv "$KEYWORDS_WEBSITE_EXCLUDE")
  WIKIA=$(egrep -i "$KEYWORDS_WIKIA" newpages.txt | egrep -iv "$KEYWORDS_WIKIA_EXCLUDE" )
  WIKIANSWERS=$(egrep -i "$KEYWORDS_WIKIANSWERS" newpages.txt)
  WIKIPEDIA=$(egrep -i "$KEYWORDS_WIKIPEDIA" newpages.txt)
  EBAY=$(egrep -i "$KEYWORDS_EBAY" newpages.txt)

  if [ "$WEBSITES" != "" ];
  then
    printf "%s" "$WEBSITES" > Websites.txt
    export CATFILE="Websites.txt"
    export CATNAME="Websites"
    $CATEGORIZE
    rm Websites.txt
    unset WEBSITES
  fi

  if [ "$WIKIA" != "" ];
  then
    printf "%s" "$WIKIA" > Wikia.txt
    export CATFILE="Wikia.txt"
    export CATNAME="Wikia"
    $CATEGORIZE
    rm Wikia.txt
    unset WIKIA
  fi

  if [ "$WIKIANSWERS" != "" ];
  then
    printf "%s" "$WIKIANSWERS" > Wikianswers.txt
    export CATFILE="Wikianswers.txt"
    export CATNAME="Wikianswers"
    $CATEGORIZE
    rm Wikianswers.txt
    unset WIKIANSWERS
  fi

  if [ "$WIKIPEDIA" != "" ];
  then
    printf "%s" "$WIKIPEDIA" > Wikipedia.txt
    export CATFILE="Wikipedia.txt"
    export CATNAME="Wikipedia"
    $CATEGORIZE
    rm Wikipedia.txt
    unset WIKIPEDIA
  fi

  if [ "$EBAY" != "" ];
  then
    printf "%s" "$EBAY" > eBay.txt
    export CATFILE="eBay.txt"
    export CATNAME="eBay"
    $CATEGORIZE
    rm eBay.txt
    unset EBAY
  fi

  debug_end "Websites"

else

  . $WEBSITEDIR/Social_networking/Socialnetworking.sh norun #KEYWORDS_SOCIALNETWORKING_ALL
  . $WEBSITEDIR/Search_engines/Searchengines.sh norun #KEYWORDS_SEARCHENGINES_ALL

  KEYWORDS_WEBSITE_ALL="$KEYWORDS_WEBSITE|$KEYWORDS_SEARCHENGINES_ALL|$KEYWORDS_SOCIALNETWORKING_ALL|$KEYWORDS_WIKIA|$KEYWORDS_WIKIANSWERS|$KEYWORDS_WIKIPEDIA|$KEYWORDS_EBAY"

fi

#This is here so ShellCheck won't complain about KEYWORDS_WEBSITE_ALL, which is used elsewhere

KEYWORDS_WEBSITE_ALL="$KEYWORDS_WEBSITE_ALL"



