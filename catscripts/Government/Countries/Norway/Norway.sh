#!/bin/bash

. ./catscripts/Government/Countries/Denmark/Vikings/Vikings.sh norun #KEYWORDS_VIKINGS

KEYWORDS_NORWAY="Norway"
KEYWORDS_NORWAY_EXCLUDE="$KEYWORDS_VIKINGS"
KEYWORDS_NORWAY_ALL="$KEYWORDS_NORWAY"

if [ "$1" == "" ];
then

  debug_start "Norway"

  NORWAY=$(egrep -i "$KEYWORDS_NORWAY" "$NEWPAGES" | egrep -iv "$KEYWORDS_NORWAY_EXCLUDE")

  categorize "NORWAY" "Norway"

  debug_end "Norway"

fi
