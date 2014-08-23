#!/bin/bash

KEYWORDS_WICCA="Wicca"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Wicca"

  WICCA=$(egrep -i "$KEYWORDS_WICCA" "$NEWPAGES")

  categorize "WICCA" "Wicca"

  debug_end "Wicca"

fi