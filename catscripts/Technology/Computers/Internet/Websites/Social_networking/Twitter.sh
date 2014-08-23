#!/bin/bash

KEYWORDS_TWITTER="Twitter"

if [ "$1" == "" ];
then

  debug_start "Twitter"

  TWITTER=$(egrep -i "$KEYWORDS_TWITTER" "$NEWPAGES")

  categorize "TWITTER" "Twitter"

  debug_end "Twitter"

fi