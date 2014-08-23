#!/bin/bash

KEYWORDS_BENIN="Benin"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Benin"

  BENIN=$(egrep -i "$KEYWORDS_BENIN" "$NEWPAGES")

  categorize "BENIN" "Benin"

  debug_end "Benin"

fi