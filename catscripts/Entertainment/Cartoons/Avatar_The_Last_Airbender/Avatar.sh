#!/bin/bash

KEYWORDS_AIRBENDER="\bAang|Katara|\bToph(|s)\b|(air|fire|water|earth)(| )(bender|tribe|people)|avatar cycle|\bSokka|\bZuko|\bAppa(|(|')s)\b|\bIroh(|s)\b|\bMomo\b|\bAzula\b|\bOzal\b"
KEYWORDS_AIRBENDER_EXCLUDE="Momo (Sohma|Hinamori|Adachi)|Bleach"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Avatar: The Last Airbender\n"
  fi

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

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Avatar: The Last Airbender\n"
  fi

fi