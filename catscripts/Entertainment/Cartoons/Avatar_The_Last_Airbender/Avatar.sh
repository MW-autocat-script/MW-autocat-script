#!/bin/bash

KEYWORDS_AIRBENDER="\bAang|Katara|\bToph(|s)\b|(air|fire|water|earth)(| )(bender|tribe|people)|avatar cycle|\bSokka|\bZuko|\bAppa(|(|')s)\b|\bIroh(|s)\b|\bMomo\b|\bAzula\b|\bOzal\b"
KEYWORDS_AIRBENDER_EXCLUDE="Momo (Sohma|Hinamori|Adachi)|Bleach"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Avatar: The Last Airbender"

  AVATAR=$(egrep -i "$KEYWORDS_AIRBENDER" "$NEWPAGES" | egrep -iv "$KEYWORDS_AIRBENDER_EXCLUDE")

  categorize "AVATAR" "Avatar: The Last Airbender"

  debug_end "Avatar: The Last Airbender"

fi