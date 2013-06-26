#!/bin/bash

KEYWORDS_AIRBENDER="\bAang|Katara|\bToph|(air|fire|water|earth)(| )(bender|tribe|people)|avatar cycle|\bSokka|\bZuko|\bAppa(|(|')s)\b|\bIroh(|s)\b|\bMomo\b|\bAzula\b|\bOzal\b"

egrep -i "$KEYWORDS_AIRBENDER" newpages.txt >> TheLastAirbender.txt

AVATAR=`stat --print=%s TheLastAirbender.txt`

if [ $AVATAR -ne 0 ];
then
  export CATFILE="TheLastAirbender.txt"
  export CATNAME="Avatar: The Last Airbender"
  $CATEGORIZE
fi

rm TheLastAirbender.txt