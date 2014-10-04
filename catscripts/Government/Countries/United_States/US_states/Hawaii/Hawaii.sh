#!/bin/bash

KEYWORDS_HAWAII="Hawaii(|s)\b|Hawai'i|\bOahu"
KEYWORDS_HONOLULU="Honolulu"
KEYWORDS_PEARLHARBOR="Pearl(| )Harbo(|u)r"
KEYWORDS_HAWAII_EXCLUDE="$KEYWORDS_HONOLULU|$KEYWORDS_PEARLHARBOR"
KEYWORDS_HAWAII_ALL="$KEYWORDS_HAWAII|$KEYWORDS_HONOLULU|$KEYWORDS_PEARLHARBOR"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Hawaii"

  HAWAII=$(egrep -i "$KEYWORDS_HAWAII" "$NEWPAGES" | egrep -iv "$KEYWORDS_HAWAII_EXCLUDE")
  HONOLULU=$(egrep -i "$KEYWORDS_HONOLULU" "$NEWPAGES")
  PEARLHARBOR=$(egrep -i "$KEYWORDS_PEARLHARBOR" "$NEWPAGES")

  categorize "HAWAII" "Hawaii"
  categorize "HONOLULU" "Honolulu"
  categorize "PEARLHARBOR" "Pearl Harbor"

  debug_end "Hawaii"

fi