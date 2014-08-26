#!/bin/bash

KEYWORDS_DEATHNOTE="Death(| )Note|(Light|Laito|Raito)(| )Yagami|Mello\b|Misa(| )(Misa|Amane)"

if [ "$1" == "" ];
then

  debug_start "Death Note"

  DEATHNOTE=$(egrep -i "$KEYWORDS_DEATHNOTE" "$NEWPAGES")

  categorize "DEATHNOTE" "Death Note"

  debug_end "Death Note"

fi