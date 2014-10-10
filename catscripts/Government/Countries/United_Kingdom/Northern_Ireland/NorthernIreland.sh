#!/bin/bash

KEYWORDS_NORTHERNIRELAND="Northern(| )Ireland"
KEYWORDS_BELFAST="Belfast"
KEYWORDS_NORTHERNIRELAND_EXCLUDE="$KEYWORDS_BELFAST"
KEYWORDS_NORTHERNIRELAND_ALL="$KEYWORDS_NORTHERNIRELAND|$KEYWORDS_BELFAST"

if [ "$1" == "" ];
then

  debug_start "Northern Ireland"

  NIRELAND=$(egrep -i "$KEYWORDS_NORTHERNIRELAND" "$NEWPAGES" | egrep -iv "$KEYWORDS_NORTHERNIRELAND_EXCLUDE")
  BELFAST=$(egrep -i "$KEYWORDS_BELFAST" "$NEWPAGES")

  categorize "NIRELAND" "Northern Ireland"
  categorize "BELFAST" "Belfast"

  debug_end "Northern Ireland"

fi