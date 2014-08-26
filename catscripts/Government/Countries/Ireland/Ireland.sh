#!/bin/bash

KEYWORDS_IRELAND="Ireland"
KEYWORDS_IRELAND_EXCLUDE="Northern(| )Ireland"
KEYWORDS_IRELAND_ALL="$KEYWORDS_IRELAND"

if [ "$1" == "" ];
then

  debug_start "Ireland"

  IRELAND=$(egrep -i "$KEYWORDS_IRELAND" "$NEWPAGES" | egrep -iv "$KEYWORDS_IRELAND_EXCLUDE")

  categorize "IRELAND" "Republic of Ireland"

  debug_end "Ireland"

fi