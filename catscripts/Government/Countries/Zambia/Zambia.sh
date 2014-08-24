#!/bin/bash

KEYWORDS_ZAMBIA="Zambia"
KEYWORDS_ZAMBIA_ALL="Zambia"

if [ "$1" == "" ];
then
  
  debug_start "Zambia"

  ZAMBIA=$(egrep -i "$KEYWORDS_ZAMBIA" "$NEWPAGES")

  categorize "ZAMBIA" "Zambia"

  debug_end "Zambia"

fi