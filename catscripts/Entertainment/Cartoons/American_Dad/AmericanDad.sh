#!/bin/bash

KEYWORDS_AMERICANDAD="American(| )Dad|(Stan|Francine|Steve|Hayley)(| )Smith"

if [ "$1" == "" ];
then

  debug_start "American Dad"

  AMERICANDAD=$(egrep -i "$KEYWORDS_AMERICANDAD" "$NEWPAGES")

  categorize "AMERICANDAD" "American Dad"

  debug_end "American Dad"

fi