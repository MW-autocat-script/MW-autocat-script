#!/bin/bash

KEYWORDS_PUERTORICO="Puerto(| )Rico|Puerto(| )Rican"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Puerto Rico"

  PUERTORICO=$(egrep -i "$KEYWORDS_PUERTORICO" "$NEWPAGES")

  categorize "PUERTORICO" "Puerto Rico"

  debug_end "Puerto Rico"

fi