#!/bin/bash

KEYWORDS_MAYAANGELOU="Angelou"

if [ "$1" == "" ];
then
  
  debug_start "Maya Angelou"

  ANGELOU=$(egrep -i "$KEYWORDS_MAYAANGELOU" "$NEWPAGES")

  categorize "ANGELOU" "Maya Angelou"

  debug_end "Maya Angelou"

fi