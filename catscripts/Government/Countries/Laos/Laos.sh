#!/bin/bash

KEYWORDS_LAOS="Laos"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Laos"

  LAOS=$(egrep -i "$KEYWORDS_LAOS" "$NEWPAGES")

  categorize "LAOS" "Laos"

  debug_end "Laos"

fi