#!/bin/bash

KEYWORDS_JAVASCRIPT="Java(| )script|node\.js"
KEYWORDS_JAVASCRIPT_ALL="$KEYWORDS_JAVASCRIPT"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Javascript"

  JAVASCRIPT=$(egrep -i "$KEYWORDS_JAVASCRIPT" "$NEWPAGES")

  categorize "JAVASCRIPT" "Javascript"

  debug_end "Javascript"

fi