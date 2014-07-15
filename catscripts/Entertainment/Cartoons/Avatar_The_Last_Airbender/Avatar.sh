#!/bin/bash

KEYWORDS_AIRBENDER="\bAang|Katara|\bToph(|s)\b|(air|fire|water|earth)(| )(bender|tribe|people)|avatar cycle|\bSokka|\bZuko|\bAppa(|(|')s)\b|\bIroh(|s)\b|\bMomo\b|\bAzula\b|\bOzal\b"
KEYWORDS_AIRBENDER_EXCLUDE="Momo (Sohma|Hinamori|Adachi)|Bleach"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Avatar: The Last Airbender"

  AVATAR=$(egrep -i "$KEYWORDS_AIRBENDER" newpages.txt | egrep -iv "$KEYWORDS_AIRBENDER_EXCLUDE")

  if [ "$AVATAR" != "" ];
  then
    printf "$AVATAR" > TheLastAirbender.txt
    export CATFILE="TheLastAirbender.txt"
    export CATNAME="Avatar: The Last Airbender"
    $CATEGORIZE
    rm TheLastAirbender.txt
    unset AVATAR
  fi

  debug_end "Avatar: The Last Airbender"

fi