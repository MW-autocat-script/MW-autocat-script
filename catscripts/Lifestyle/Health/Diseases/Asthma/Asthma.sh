#!/bin/bash

KEYWORDS_ASTHMA="Asthma"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Asthma"

  ASTHMA=$(egrep -i "$KEYWORDS_ASTHMA" "$NEWPAGES")

  categorize "ASTHMA" "Asthma"

  debug_end "Asthma"

fi