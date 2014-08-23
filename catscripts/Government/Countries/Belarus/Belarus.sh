#!/bin/bash

KEYWORDS_BELARUS="Belarus"

if [ "$1" == "" ];
then

  debug_start "Belarus"

  BELARUS=$(egrep -i "$KEYWORDS_BELARUS" "$NEWPAGES")

  categorize "BELARUS" "Belarus"

  debug_end "Belarus"

fi