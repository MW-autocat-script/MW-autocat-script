#!/bin/bash

KEYWORDS_BELGIUM="Belgium|Belguim|Belgum"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Belgium"

  BELGIUM=$(egrep -i "$KEYWORDS_BELGIUM" "$NEWPAGES")

  categorize "BELGIUM" "Belgium"

  debug_end "Belgium"

fi