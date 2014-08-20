#!/bin/bash

KEYWORDS_FIREFOX="Firefox"
KEYWORDS_GOOGLECHROME="Google(| )Chrome|Chrome(| )browser"
KEYWORDS_INTERNETEXPLORER="Internet(| )Explorer|\bIE(| )[0-9]{1,2}\b"
KEYWORDS_WEBBROWSER="Web(| )browser"
KEYWORDS_WEBBROWSER_EXCLUDE="$KEYWORDS_FIREFOX|$KEYWORDS_GOOGLECHROME|$KEYWORDS_INTERNETEXPLORER"
KEYWORDS_WEBBROWSER_OTHER="NCSA(| )Mosaic|Safari(| )browser|Chromium(| )browser|\bDillo\b|Netscape(| )Navigator|Arachne|\bAmaya\b|NetFront|NetSurf|WebKit|Konqueror|Kazekhase|Mozilla"
KEYWORDS_WEBBROWSER_ALL="$KEYWORDS_WEBBROWSER|$KEYWORDS_WEBBROWSER_EXCLUDE|$KEYWORDS_WEBBROWSER_OTHER"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Web browsers"

  IEXPLORER=$(egrep -i "$KEYWORDS_INTERNETEXPLORER" "$NEWPAGES")
  FIREFOX=$(egrep -i "$KEYWORDS_FIREFOX" "$NEWPAGES")
  CHROME=$(egrep -i "$KEYWORDS_GOOGLECHROME" "$NEWPAGES")
  BROWSERS=$(egrep -i "$KEYWORDS_WEBBROWSER|$KEYWORDS_WEBBROWSER_OTHER" "$NEWPAGES" | egrep -iv "$KEYWORDS_WEBBROWSER_EXCLUDE")

  if [ "$IEXPLORER" != "" ];
  then
    printf "%s" "$IEXPLORER" > InternetExplorer.txt
    export CATFILE="InternetExplorer.txt"
    export CATNAME="Internet Explorer"
    $CATEGORIZE
    rm InternetExplorer.txt
    unset IEXPLORER
  fi

  if [ "$FIREFOX" != "" ];
  then
    printf "%s" "$FIREFOX" > MozillaFirefox.txt
    export CATFILE="MozillaFirefox.txt"
    export CATNAME="Mozilla Firefox"
    $CATEGORIZE
    rm MozillaFirefox.txt
    unset FIREFOX
  fi

  if [ "$CHROME" != "" ];
  then
    printf "%s" "$CHROME" > GoogleChrome.txt
    export CATFILE="GoogleChrome.txt"
    export CATNAME="Google Chrome"
    $CATEGORIZE
    rm GoogleChrome.txt
    unset CHROME
  fi

  if [ "$BROWSERS" != "" ];
  then
    printf "%s" "$BROWSERS" > Webbrowsers.txt
    export CATFILE="Webbrowsers.txt"
    export CATNAME="Web browsers"
    $CATEGORIZE
    rm Webbrowsers.txt
    unset BROWSERS
  fi

  debug_end "Web browsers"

fi