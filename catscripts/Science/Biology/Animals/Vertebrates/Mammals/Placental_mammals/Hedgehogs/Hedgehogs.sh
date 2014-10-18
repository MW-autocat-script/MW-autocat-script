#!/bin/bash

KEYWORDS_HEDGEHOGS="Hedgehog"
KEYWORDS_HEDGEHOGS_EXCLUDE="sonic|shadow|silver|elise|nazo|scourge|amy(| )rose"
KEYWORDS_HEDGEHOGS_ALL="$KEYWORDS_HEDGEHOGS"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Hedgehogs"

  HEDGEHOGS=$(egrep -i "$KEYWORDS_HEDGEHOGS" "$NEWPAGES" | egrep -iv "$KEYWORDS_HEDGEHOGS_EXCLUDE")

  categorize "HEDGEHOGS" "Hedgehogs"

  debug_end "Hedgehogs"

fi