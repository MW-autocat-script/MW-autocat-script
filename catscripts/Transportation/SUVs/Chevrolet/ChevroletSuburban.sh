#!/bin/bash

KEYWORDS_CHEVROLETSUBURBAN="Chev(y|rolet)(| )Suburban|[0-9]{2,}Suburban"

if [ "$1" == "" ];
then

  debug_start "Chevrolet Suburban"

  SUBURBAN=$(egrep -i "$KEYWORDS_CHEVROLETSUBURBAN" "$NEWPAGES")

  categorize "SUBURBAN" "Chevrolet Suburban"

  debug_end "Chevrolet Suburban"

fi