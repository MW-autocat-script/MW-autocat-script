#!/bin/bash

KEYWORDS_JAVASCRIPT="Java(| )Script|node\.js|asm\.js"
KEYWORDS_JAVASCRIPT_ALL="$KEYWORDS_JAVASCRIPT"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "JavaScript"

  JAVASCRIPT=$(egrep -i "$KEYWORDS_JAVASCRIPT" "$NEWPAGES")

  categorize "JAVASCRIPT" "JavaScript"

  debug_end "JavaScript"

fi