#!/bin/bash

KEYWORDS_DOMINICANREPUBLIC="Dominican(| )Republic"
KEYWORDS_DOMINICANREPUBLIC_ALL="$KEYWORDS_DOMINICANREPUBLIC"

if [ "$1" == "" ];
then

  debug_start "Dominican Republic"

  DOMINICAN=$(egrep -i "$KEYWORDS_DOMINICANREPUBLIC" "$NEWPAGES")

  categorize "DOMINICAN" "Dominican Republic"

  debug_end "Dominican Republic"

fi
