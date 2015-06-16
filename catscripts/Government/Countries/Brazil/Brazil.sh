#!/bin/bash

KEYWORDS_BRAZIL="Brazil"
KEYWORDS_RIODEJANEIRO="Rio(| )de(| )Janeiro"
KEYWORDS_BRAZIL_EXCLUDE="$KEYWORDS_RIODEJANEIRO"
KEYWORDS_BRAZIL_ALL="$KEYWORDS_BRAZIL|$KEYWORDS_RIODEJANEIRO"

if [ "$1" == "" ];
then
  
  debug_start "Brazil"

  BRAZIL=$(egrep -i "$KEYWORDS_BRAZIL" "$NEWPAGES")

  categorize "BRAZIL" "Brazil"

  RIODEJANEIRO=$(egrep -i "$KEYWORDS_RIODEJANEIRO" "$NEWPAGES")

  categorize "RIODEJANEIRO" "Rio de Janeiro"

  debug_end "Brazil"

fi