#!/bin/bash

KEYWORDS_BURKINAFASO="Burkina(| )Faso"
KEYWORDS_BURKINAFASO_ALL="$KEYWORDS_BURKINAFASO"

if [ "$1" == "" ];
then
  
  debug_start "Burkina Faso"

  BURKINAFASO=$(egrep -i "$KEYWORDS_BURKINAFASO" "$NEWPAGES")

  categorize "BURKINAFASO" "Burkina Faso"

  debug_end "Burkina Faso"

fi