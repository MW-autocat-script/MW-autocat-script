#!/bin/bash

KEYWORDS_JAPAN="Japan\b"
KEYWORDS_TOKYO="Tokyo|Kyoto"
KEYWORDS_HIROSHIMA="Hiroshima"
KEYWORDS_NAGASAKI="Nagasaki"
KEYWORDS_JAPAN_EXCLUDE="$KEYWORDS_TOKYO|$KEYWORDS_HIROSHIMA|$KEYWORDS_NAGASAKI"
KEYWORDS_JAPAN_ALL="$KEYWORDS_JAPAN|$KEYWORDS_HIROSHIMA|$KEYWORDS_NAGASAKI|$KEYWORDS_TOKYO"

if [ "$1" == "" ];
then
  
  debug_start "Japan"

  JAPAN=$(egrep -i "$KEYWORDS_JAPAN" "$NEWPAGES" | egrep -iv "$KEYWORDS_JAPAN_EXCLUDE")
  TOKYO=$(egrep -i "$KEYWORDS_TOKYO" "$NEWPAGES")
  HIROSHIMA=$(egrep -i "$KEYWORDS_HIROSHIMA" "$NEWPAGES")
  NAGASAKI=$(egrep -i "$KEYWORDS_NAGASAKI" "$NEWPAGES")

  categorize "JAPAN" "Japan"
  categorize "TOKYO" "Tokyo"
  categorize "HIROSHIMA" "Hiroshima"
  categorize "NAGASAKI" "Nagasaki"

  debug_end "Japan"

fi