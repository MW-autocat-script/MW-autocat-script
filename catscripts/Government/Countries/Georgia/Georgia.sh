#!/bin/bash

KEYWORDS_GEORGIAREPUBLIC="(Republic|Country)(| )of(| )Georgia"
KEYWORDS_GEORGIAREPUBLIC_ALL="$KEYWORDS_GEORGIAREPUBLIC"

if [ "$1" == "" ];
then

  debug_start "Georgia (country)"

  GEORGIAREPUBLIC=$(egrep -i "$KEYWORDS_GEORGIAREPUBLIC" "$NEWPAGES")

  categorize "GEORGIAREPUBLIC" "Georgia (country)"

  debug_end "Georgia (country)"

fi