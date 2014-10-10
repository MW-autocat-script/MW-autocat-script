#!/bin/bash

KEYWORDS_LIECHTENSTEIN="Liechtenstein"
KEYWORDS_LIECHTENSTEIN_ALL="$KEYWORDS_LIECHTENSTEIN"

if [ "$1" == "" ];
then

  debug_start "Liechtenstein"

  LIECHTENSTEIN=$(egrep -i "$KEYWORDS_LIECHTENSTEIN" "$NEWPAGES")

  categorize "LIECHTENSTEIN" "Liechtenstein"

  debug_end "Liechtenstein"

fi