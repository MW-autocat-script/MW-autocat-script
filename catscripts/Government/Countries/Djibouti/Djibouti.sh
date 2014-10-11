#!/bin/bash

KEYWORDS_DJIBOUTI="Djibouti"
KEYWORDS_DJIBOUTI_ALL="$KEYWORDS_DJIBOUTI"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Djibouti"

  DJIBOUTI=$(egrep -i "$KEYWORDS_DJIBOUTI" "$NEWPAGES")

  categorize "DJIBOUTI" "Djibouti"

  debug_end "Djibouti"

fi