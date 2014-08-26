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

  categorize "IEXPLORER" "Internet Explorer"
  categorize "FIREFOX" "Mozilla Firefox"
  categorize "CHROME" "Google Chrome"
  categorize "BROWSERS" "Web browsers"

  debug_end "Web browsers"

fi