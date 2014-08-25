#!/bin/bash

KEYWORDS_LINKINPARK="Linkin('|)(| )Park"

if [ "$1" == "" ];
then

  debug_start "Linkin' Park"

  LINKIN=$(egrep -i "$KEYWORDS_LINKINPARK" "$NEWPAGES")

  categorize "LINKIN" "Linkin Park"

  debug_end "Linkin' Park"

fi