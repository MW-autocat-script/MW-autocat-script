#!/bin/bash

KEYWORDS_SAINTKITTS="(Saint|St(|\.))(| )Kitts"
KEYWORDS_SAINTKITTS_ALL="$KEYWORDS_SAINTKITTS"

if [ "$1" == "" ];
then

  debug_start "Saint Kitts and Nevis"

  SAINTKITTS=$(egrep -i "$KEYWORDS_SAINTKITTS" "$NEWPAGES")

  categorize "SAINTKITTS" "Saint Kitts and Nevis"

  debug_end "Saint Kitts and Nevis"

fi