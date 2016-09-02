#!/bin/bash

KEYWORDS_COD4="Modern(| )Warfare|\bCOD(| )4|Call(| )of(| )Duty(| )4"
KEYWORDS_COD4_EXCLUDE="Modern(| )Warfare(| )(two|three|[2-9]{1,})"
KEYWORDS_CODWAW="\bCOD(| )5|\bWaW\b|World(| )at(| )War|Call(| )of(| )Duty(| )5"
KEYWORDS_CODMW2="\bCOD(| )6|\bMW2\b|Modern(| )Warfare(| )2|Call(| )of(| )Duty(| )6"
KEYWORDS_CODBO="\bCOD(| )7|Black Ops|Call of Duty 7"
KEYWORDS_CODBO_EXCLUDE="Black(| )Ops(| )([2-9]{1,}|\bII\b|\bIII\b|\bIV\b|\bV\b)"
KEYWORDS_CODMW3="\bCOD(| )8|\bMW3\b|Modern(| )Warfare(| )3|Call(| )of(| )Duty(| )8"
KEYWORDS_CODBO2="\bCOD(| )9|Black Ops (2|II\b)|Call of Duty 9"
KEYWORDS_CODGHOSTS="\bCOD(| )10|Call(| )Of(| )Duty(\:|)(| )Ghost"
KEYWORDS_CODAW="\bCOD(| )11|Call(| )of(| )Duty(\:|)(| )(AW|(Advanced(| )Warfare))"
KEYWORDS_CODBO3="COD(| )12|Black(| )Ops(| )(3|III)|Call(| )of(| )Duty(| )12"
KEYWORDS_CALLOFDUTYSERIES="Call(| )of(| )Duty|CoD(| )series"
KEYWORDS_CALLOFDUTYSERIES_EXCLUDE="$KEYWORDS_COD4|$KEYWORDS_CODWAW|$KEYWORDS_CODBO|$KEYWORDS_CODMW3|$KEYWORDS_CODBO2|$KEYWORDS_CODGHOSTS|$KEYWORDS_CODAW"
KEYWORDS_CALLOFDUTYSERIES_CASESENSITIVE="CoD"
KEYWORDS_CALLOFDUTYSERIES_CASESENSITIVE_EXCLUDE="CoD(| )[0-9]{1,}" 

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Call of Duty series"

  CALLOFDUTY=$(egrep -i "$KEYWORDS_CALLOFDUTYSERIES" "$NEWPAGES" | egrep -iv "$KEYWORDS_CALLOFDUTYSERIES_EXCLUDE"; egrep "$KEYWORDS_CALLOFDUTYSERIES_CASESENSITIVE" "$NEWPAGES" | egrep -v "$KEYWORDS_CALLOFDUTYSERIES_CASESENSITIVE_EXCLUDE")
  MODERN=$(egrep -i "$KEYWORDS_COD4" "$NEWPAGES" | egrep -iv "$KEYWORDS_COD4_EXCLUDE")
  WORLDATWAR=$(egrep -i "$KEYWORDS_CODWAW" "$NEWPAGES")
  MW2=$(egrep -i "$KEYWORDS_CODMW2" "$NEWPAGES")
  BLACKOPS=$(egrep -i "$KEYWORDS_CODBO" "$NEWPAGES" | egrep -iv "$KEYWORDS_CODBO_EXCLUDE")
  MW3=$(egrep -i "$KEYWORDS_CODMW3" "$NEWPAGES")
  BO2=$(egrep -i "$KEYWORDS_CODBO2" "$NEWPAGES")
  GHOSTS=$(egrep -i "$KEYWORDS_CODGHOSTS" "$NEWPAGES")
  CODAW=$(egrep -i "$KEYWORDS_CODWAW" "$NEWPAGES")
  BO3=$(egrep -i "$KEYWORDS_CODBO3" "$NEWPAGES")

  categorize "CALLOFDUTY" "Call of Duty series"
  categorize "MODERN" "Call of Duty 4: Modern Warfare"
  categorize "WORLDATWAR" "Call of Duty: World at War"
  categorize "MW2" "Call of Duty: Modern Warfare 2"
  categorize "BLACKOPS" "Call of Duty: Black Ops"
  categorize "MW3" "Call of Duty: Modern Warfare 3"
  categorize "BO2" "Call of Duty: Black Ops II"
  categorize "GHOSTS" "Call of Duty: Ghosts"
  categorize "CODAW" "Call of Duty: Advanced Warfare"
  categorize "BO3" "Call of Duty: Black Ops III"

  debug_end "Call of Duty series"

fi

