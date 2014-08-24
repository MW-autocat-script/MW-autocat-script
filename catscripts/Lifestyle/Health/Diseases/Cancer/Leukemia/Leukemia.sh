#!/bin/bash

KEYWORDS_LEUKEMIA="Leukemia"

if [ "$1" == "" ];
then
  
  debug_start "Leukemia"

  LEUKEMIA=$(egrep -i "$KEYWORDS_LEUKEMIA" "$NEWPAGES")

  categorize "LEUKEMIA" "Leukemia"

  debug_end "Leukemia"

fi