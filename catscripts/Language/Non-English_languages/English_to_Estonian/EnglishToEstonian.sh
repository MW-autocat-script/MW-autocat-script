#!/bin/bash

KEYWORDS_ENGLISHTOESTONIAN="How(| )do(| )you(| )(say|spell).+in(| )Estonian|Estonian(| )word(| )for"
KEYWORDS_ENGLISHTOESTONIAN_ALL="$KEYWORDS_ENGLISHTOESTONIAN"

if [ "$1" != "" ];
then
  
  debug_start "English to Estonian"

  ESTONIAN=$(egrep -i "$KEYWORDS_ENGLISHTOESTONIAN" "$NEWPAGES")

  categorize "ESTONIAN" "English to Estonian"

  debug_end "Estonian"

fi