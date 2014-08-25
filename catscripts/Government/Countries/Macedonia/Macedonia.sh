#!/bin/bash

KEYWORDS_MACEDONIA="Macedonia"

if [ "$1" == "" ];
then

  debug_start "Macedonia"

  MACEDONIA=$(egrep -i "$KEYWORDS_MACEDONIA" "$NEWPAGES")

  categorize "MACEDONIA" "Macedonia"

  debug_end "Macedonia"

fi