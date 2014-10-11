#!/bin/bash

KEYWORDS_THELASTREMNANT="The(| )Last(| )Remnant"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "The Last Remnant"

  REMNANT=$(egrep -i "$KEYWORDS_THELASTREMNANT" "$NEWPAGES")

  categorize "REMNANT" "The Last Remnant"

  debug_end "The Last Remnant"

fi
