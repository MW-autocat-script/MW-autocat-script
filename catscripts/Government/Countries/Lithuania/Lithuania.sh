#!/bin/bash

KEYWORDS_LITHUANIA="Lithuania"

if [ "$1" == "" ];
then

  debug_start "Lithuania"

  LITHUANIA=$(egrep -i "$KEYWORDS_LITHUANIA" "$NEWPAGES")

  categorize "LITHUANIA" "Lithuania"

  debug_end "Lithuania"

fi