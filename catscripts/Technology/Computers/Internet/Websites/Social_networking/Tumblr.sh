#!/bin/bash

KEYWORDS_TUMBLR="Tumblr"

if [ "$1" == "" ];
then
  
  debug_start "Tumblr"

  TUMBLR=$(egrep -i "$KEYWORDS_TUMBLR" "$NEWPAGES")

  categorize "TUMBLR" "Tumblr"

  debug_end "Tumblr"

fi