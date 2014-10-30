#!/bin/bash

KEYWORDS_CROCODILES="Crocodil(ian|e)"
KEYWORDS_CROCODILES_EXCLUDE="Crocodile(| )Dundee|Crocodile(| )Hunter"
KEYWORDS_CROCODILES_ALL="$KEYWORDS_CROCODILES"

if [ "$1" == "" ];
then
  
  debug_start "Crocodiles"

  CROCODILES=$(egrep -i "$KEYWORDS_CROCODILES" "$NEWPAGES" | egrep -iv "$KEYWORDS_CROCODILES_EXCLUDE")

  categorize "CROCODILES" "Crocodiles"

  debug_end "Crocodiles"

fi