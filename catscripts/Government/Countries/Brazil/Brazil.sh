#!/bin/bash

KEYWORDS_BRAZIL="Brazil"
KEYWORDS_BRAZIL_ALL="$KEYWORDS_BRAZIL"

if [ "$1" == "" ];
then
  
  debug_start "Brazil"

  BRAZIL=$(egrep -i "$KEYWORDS_BRAZIL" "$NEWPAGES")

  categorize "BRAZIL" "Brazil"

  debug_end "Brazil"

fi