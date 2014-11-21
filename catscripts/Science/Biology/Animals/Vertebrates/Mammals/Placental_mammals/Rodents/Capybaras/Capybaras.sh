#!/bin/bash

KEYWORDS_CAPYBARAS="Capybara"
KEYWORDS_CAPYBARAS_ALL="$KEYWORDS_CAPYBARAS"

if [ "$1" == "" ];
then
  
  debug_start "Capybaras"

  CAPYBARAS=$(egrep -i "$KEYWORDS_CAPYBARAS" "$NEWPAGES")

  categorize "CAPYBARAS" "Capybaras"

  debug_end "Capybaras"

fi