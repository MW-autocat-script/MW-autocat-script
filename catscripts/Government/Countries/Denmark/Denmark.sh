#!/bin/bash


if [ "$1" == "" ];
then

  debug_start "Denmark"

  . ./catscripts/Government/Countries/Denmark/Vikings/Vikings.sh #KEYWORDS_VIKINGS

  KEYWORDS_DENMARK="Denmark"
  KEYWORDS_GREENLAND="Greenland"
  KEYWORDS_DENMARK_EXCLUDE="$KEYWORDS_VIKINGS|$KEYWORDS_GREENLAND"

  DENMARK=$(egrep -i "$KEYWORDS_DENMARK" "$NEWPAGES" | egrep -iv "$KEYWORDS_DENMARK_EXCLUDE")
  GREENLAND=$(egrep -i "$KEYWORDS_GREENLAND" "$NEWPAGES")

  categorize "DENMARK" "Denmark"
  categorize "GREENLAND" "Greenland"

  debug_end "Denmark"

else

  . ./catscripts/Government/Countries/Denmark/Vikings/Vikings.sh norun #KEYWORDS_VIKINGS

  KEYWORDS_DENMARK="Denmark"
  KEYWORDS_GREENLAND="Greenland"
  KEYWORDS_DENMARK_EXCLUDE="$KEYWORDS_VIKINGS|$KEYWORDS_GREENLAND"

fi