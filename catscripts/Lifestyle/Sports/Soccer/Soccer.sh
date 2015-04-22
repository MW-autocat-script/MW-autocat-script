#!/bin/bash

KEYWORDS_SOCCER="soccer|footballer"
KEYWORDS_CRONALDO="Cristiano(| )Ronaldo|\bC(\.|-| )(| )ronaldo"
KEYWORDS_LMESSI="\bMessi(|s)\b"
KEYWORDS_NEYMAR="Neymar"
KEYWORDS_SOCCER_EXCLUDE="$KEYWORDS_CRONALDO|$KEYWORDS_LMESSI|$KEYWORDS_NEYMAR"

if [ "$1" == "" ];
then
  
  debug_start "Soccer"

  SOCCER=$(egrep -i "$KEYWORDS_SOCCER" "$NEWPAGES" | egrep -iv "$KEYWORDS_SOCCER_EXCLUDE")
  CRONALDO=$(egrep -i "$KEYWORDS_CRONALDO" "$NEWPAGES")
  LMESSI=$(egrep -i "$KEYWORDS_LMESSI" "$NEWPAGES")
  NEYMAR=$(egrep -i "$KEYWORDS_NEYMAR" "$NEWPAGES")

  categorize "SOCCER" "Soccer (association football)"
  categorize "CRONALDO" "Cristiano Ronaldo"
  categorize "LMESSI" "Lionel Messi"
  categorize "NEYMAR" "Neymar da Silva Santos Júnior"

  debug_end "Soccer"

fi