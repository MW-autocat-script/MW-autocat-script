#!/bin/bash

KEYWORDS_ROBERTFROST="Robert(| )Frost"

if [ "$1" == "" ];
then
  
  debug_start "Robert Frost"

  FROST=$(egrep -i "$KEYWORDS_ROBERTFROST" "$NEWPAGES")

  categorize "FROST" "Robert Frost"

  debug_end "Robert Frost"

fi