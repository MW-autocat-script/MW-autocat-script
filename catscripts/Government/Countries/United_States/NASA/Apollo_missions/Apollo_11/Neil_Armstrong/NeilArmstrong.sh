#!/bin/bash

KEYWORDS_NEILARMSTRONG="Neil(| )Armstr(o|i)ng"
KEYWORDS_NEILARMSTRONG_ALL="$KEYWORDS_NEILARMSTRONG"

if [ "$1" == "" ];
then
  
  debug_start "Neil Armstrong"

  ARMSTRONG=$(egrep -i "$KEYWORDS_NEILARMSTRONG" "$NEWPAGES")

  categorize "ARMSTRONG" "Neil Armstrong"

  debug_end "Neil Armstrong"

fi
