#!/bin/bash

KEYWORDS_RHODEISLAND="Rhode(| )Island"
KEYWORDS_RHODEISLAND_ALL="$KEYWORDS_RHODEISLAND"

if [ "$1" == "" ];
then
  
  debug_start "Rhode Island"

  RHODEISLAND=$(egrep -i "$KEYWORDS_RHODEISLAND" "$NEWPAGES")

  categorize "RHODEISLAND" "Rhode Island"

  debug_end "Rhode Island"

fi