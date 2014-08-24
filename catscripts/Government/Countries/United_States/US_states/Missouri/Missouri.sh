#!/bin/bash

KEYWORDS_MISSOURI="Missouri"
KEYWORDS_MISSOURI_ALL="$KEYWORDS_MISSOURI"

if [ "$1" == "" ];
then

  debug_start "Missouri"

  MISSOURI=$(egrep -i "$KEYWORDS_MISSOURI" "$NEWPAGES")

  categorize "MISSOURI" "Missouri"

  debug_end "Missouri"

fi