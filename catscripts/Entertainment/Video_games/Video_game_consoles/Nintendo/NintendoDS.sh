#!/bin/bash

KEYWORDS_NINTENDODS="Nintendo(| )DS(|(|e)s)\b|\bNDS\b"
KEYWORDS_DSI="\bDSI(|s)\b|NintendoDSI"
KEYWORDS_THREEDS="Nintendo(| )[23]DS"
KEYWORDS_DS_ALL="$KEYWORDS_NINTENDODS|$KEYWORDS_DSI|$KEYWORDS_THREEDS"

if [ "$1" == "" ];
then
  
  debug_start "Nintendo DS"

  NDS=$(egrep -i "$KEYWORDS_NINTENDODS" "$NEWPAGES")
  DSI=$(egrep -i "$KEYWORDS_DSI" "$NEWPAGES")
  THREEDS=$(egrep -i "$KEYWORDS_THREEDS" "$NEWPAGES")

  categorize "NDS" "Nintendo DS"
  categorize "DSI" "Nintendo DSi"
  categorize "THREEDS" "Nintendo 3DS"

  debug_end "Nintendo DS"

fi