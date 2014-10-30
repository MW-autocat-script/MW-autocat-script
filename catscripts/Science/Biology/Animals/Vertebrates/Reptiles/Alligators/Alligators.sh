#!/bin/bash

KEYWORDS_ALLIGATORS="Alligator|Caiman"
KEYWORDS_ALLIGATORS_ALL="$KEYWORDS_ALLIGATORS"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Alligators"

  ALLIGATORS=$(egrep -i "$KEYWORDS_ALLIGATORS" "$NEWPAGES")

  categorize "ALLIGATORS" "Alligators"

  debug_end "Alligators"

fi