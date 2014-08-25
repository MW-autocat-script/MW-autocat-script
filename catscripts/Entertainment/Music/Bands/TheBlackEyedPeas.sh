#!/bin/bash

KEYWORDS_BLACKEYEDPEAS="Black(| )Eyed(| )Peas|will\.i\.am"

if [ "$1" == "" ];
then
  
  debug_start "The Black Eyed Peas"

  BLACKEYEDPEAS=$(egrep -i "$KEYWORDS_BLACKEYEDPEAS" "$NEWPAGES")

  categorize "BLACKEYEDPEAS" "The Black Eyed Peas"

  debug_end "The Black Eyed Peas"

fi