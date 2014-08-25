#!/bin/bash

KEYWORDS_KOSOVO="Kosovo"
KEYWORDS_KOSOVO_ALL="$KEYWORDS_KOSOVO"

if [ "$1" == "" ];
then

  debug_start "Kosovo"

  KOSOVO=$(egrep -i "$KEYWORDS_KOSOVO" "$NEWPAGES")

  categorize "KOSOVO" "Kosovo"

  debug_end "Kosovo"

fi