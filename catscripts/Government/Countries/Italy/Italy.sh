#!/bin/bash

KEYWORDS_ITALY="Italy"
KEYWORDS_ROME="\bRome(|s)\b"
KEYWORDS_JULIUSCAESAR="Julius(| )Caesar"
KEYWORDS_PISA="Pisa"
KEYWORDS_POMPEII="Pompeii"
KEYWORDS_VENICE="Venice"
KEYWORDS_MILAN="\bMilan(|s)\b"
KEYWORDS_ANCIENTROME="Ancient(| )Rome|Romans|Roman(| )times|Augustus(| )Caesar|Emperor(| )Nero|Caligula|Roman(| )Empire|Emperor(| )of(| )Rome"
KEYWORDS_ANCIENTROME_EXCLUDE="$KEYWORDS_POMPEII|$KEYWORDS_JULIUSCAESAR|Book of Romans|Romans [0-9]{1,}\:[0-9]{1,}"
KEYWORDS_ROME_EXCLUDE="$KEYWORDS_ANCIENTROME|$KEYWORDS_ANCIENTROME_EXCLUDE|Rome(,|)(| )Georgia"
KEYWORDS_ITALY_EXCLUDE="$KEYWORDS_ROME|$KEYWORDS_ROME_EXCLUDE|$KEYWORDS_PISA|$KEYWORDS_VENICE|$KEYWORDS_MILAN"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Italy"

  ITALY=$(egrep -i "$KEYWORDS_ITALY" "$NEWPAGES" | egrep -iv "$KEYWORDS_ITALY_EXCLUDE")
  ROME=$(egrep -i "$KEYWORDS_ROME" "$NEWPAGES" | egrep -iv "$KEYWORDS_ROME_EXCLUDE")
  ANCIENTROME=$(egrep -i "$KEYWORDS_ANCIENTROME" "$NEWPAGES" | egrep -iv "$KEYWORDS_ANCIENTROME_EXCLUDE")
  PISA=$(egrep -i "$KEYWORDS_PISA" "$NEWPAGES")
  POMPEII=$(egrep -i "$KEYWORDS_POMPEII" "$NEWPAGES")
  JCAESAR=$(egrep -i "$KEYWORDS_JULIUSCAESAR" "$NEWPAGES")
  VENICE=$(egrep -i "$KEYWORDS_VENICE" "$NEWPAGES")
  MILAN=$(egrep -i "$KEYWORDS_MILAN" "$NEWPAGES")

  categorize "ITALY" "Italy"
  categorize "ROME" "Rome"
  categorize "ANCIENTROME" "Ancient Rome"
  categorize "PISA" "Pisa, Italy"
  categorize "POMPEII" "Pompeii"
  categorize "JCAESAR" "Julius Caesar"
  categorize "VENICE" "Venice"
  categorize "MILAN" "Milan"

  debug_end "Italy"

fi