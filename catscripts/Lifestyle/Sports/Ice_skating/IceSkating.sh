#!/bin/bash

KEYWORDS_ICESKATING="(figure|ice)(| )skat(e|ing)"

if [ "$1" == "" ];
then
  
  debug_start "Ice skating"

  ICESKATING=$(egrep -i "$KEYWORDS_ICESKATING" "$NEWPAGES")

  categorize "ICESKATING" "Ice skating"

  debug_end "Ice skating"

fi