#!/bin/bash

KEYWORDS_FIREFOX="Firefox"
KEYWORDS_GOOGLECHROME="Google(| )Chrome|Chrome(| )browser"
KEYWORDS_INTERNETEXPLORER="Internet(| )Explorer|\bIE(| )[0-9]{1,2}\b"
KEYWORDS_WEBBROWSER="Web(| )browser"
KEYWORDS_WEBBROWSER_EXCLUDE="$KEYWORDS_FIREFOX|$KEYWORDS_GOOGLECHROME|$KEYWORDS_INTERNETEXPLORER"
KEYWORDS_WEBBROWSER_OTHER="NCSA(| )Mosaic|Safari(| )browser|Chromium(| )browser|\bDillo|Netscape(| )Navigator|Arachne|\bAmaya\b|NetFront|NetSurf|WebKit|Konqueror|Kazekhase|Mozilla"
KEYWORDS_WEBBROWSER_ALL="$KEYWORDS_WEBBROWSER|$KEYWORDS_WEBBROWSER_EXCLUDE|$KEYWORDS_WEBBROWSER_OTHER"

if [ "$1" == "" ]; #Normal operation
then
  egrep -i "$KEYWORDS_INTERNETEXPLORER" newpages.txt >> InternetExplorer.txt
  egrep -i "$KEYWORDS_FIREFOX" newpages.txt >> MozillaFirefox.txt
  egrep -i "$KEYWORDS_GOOGLECHROME" newpages.txt >> GoogleChrome.txt
  egrep -i "$KEYWORDS_WEBBROWSER|$KEYWORDS_WEBBROWSER_OTHER" newpages.txt | egrep -iv "$KEYWORDS_WEBBROWSER_EXCLUDE" >> Webbrowsers.txt

  IEXPLORER=`stat --print=%s InternetExplorer.txt`
  FIREFOX=`stat --print=%s MozillaFirefox.txt`
  CHROME=`stat --print=%s GoogleChrome.txt`
  BROWSERS=`stat --print=%s Webbrowsers.txt`

  if [ $IEXPLORER -ne 0 ];
  then
    export CATFILE="InternetExplorer.txt"
    export CATNAME="Internet Explorer"
    $CATEGORIZE
  fi

  if [ $FIREFOX -ne 0 ];
  then
    export CATFILE="MozillaFirefox.txt"
    export CATNAME="Mozilla Firefox"
    $CATEGORIZE
  fi

  if [ $CHROME -ne 0 ];
  then
    export CATFILE="GoogleChrome.txt"
    export CATNAME="Google Chrome"
    $CATEGORIZE
  fi

  if [ $BROWSERS -ne 0 ];
  then
    export CATFILE="Webbrowsers.txt"
    export CATNAME="Web browsers"
    $CATEGORIZE
  fi

  rm InternetExplorer.txt
  rm MozillaFirefox.txt
  rm GoogleChrome.txt
  rm Webbrowsers.txt

fi