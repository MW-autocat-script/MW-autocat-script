#!/bin/bash

KEYWORDS_BLACKBEAUTY="Black(| )Beauty"

if [ "$1" == "" ];
then

  debug_start "Black Beauty"

  BLACKBEAUTY=$(egrep -i "$KEYWORDS_BLACKBEAUTY" "$NEWPAGES")

  categorize "BLACKBEAUTY" "Black Beauty"

  debug_end "Black Beauty"

fi