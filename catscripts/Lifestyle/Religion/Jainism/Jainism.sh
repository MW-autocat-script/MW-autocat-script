#!/bin/bash

KEYWORDS_JAINISM="Jain(|s|ism)\b"
KEYWORDS_JAINISM_ALL="$KEYWORDS_JAINISM"

if [ "$1" == "" ];
then
  
  debug_start "Jainism"

  JAINISM=$(egrep -i "$KEYWORDS_JAINISM" "$NEWPAGES")

  categorize "JAINISM" "Jainism"

  debug_end "Jainism"

fi