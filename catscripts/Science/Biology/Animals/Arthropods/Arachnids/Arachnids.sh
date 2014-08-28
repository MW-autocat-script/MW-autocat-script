#!/bin/bash

KEYWORDS_ARACHNIDS="Arachnid"
KEYWORDS_TICKS="deer(| )tick"
KEYWORDS_SPIDERS="spider|tarantula|daddy(| |-)long(| |-)leg"
KEYWORDS_SPIDERS_EXCLUDE="Spider(| |-)Man|Rune(| )Scape|Stronghold(| )of(| )Security|Varrock|spider(| )solitaire"
KEYWORDS_SCORPIONS="Scorpion"
KEYWORDS_SCORPIONS_EXCLUDE="scorpion(| )king"
KEYWORDS_ARACHNIDS_EXCLUDE="$KEYWORDS_TICKS|$KEYWORDS_SPIDERS|$KEYWORDS_SPIDERS_EXCLUDE|$KEYWORDS_SCORPIONS|$KEYWORDS_SCORPIONS_EXCLUDE"

if [ "$1" == "" ];
then
  
  debug_start "Arachnids"

  ARACHNIDS=$(egrep -i "$KEYWORDS_ARACHNIDS" "$NEWPAGES" | egrep -iv "$KEYWORDS_ARACHNIDS_EXCLUDE")
  TICKS=$(egrep -i "$KEYWORDS_TICKS" "$NEWPAGES")
  SPIDERS=$(egrep -i "$KEYWORDS_SPIDERS" "$NEWPAGES" | egrep -iv "$KEYWORDS_SPIDERS_EXCLUDE")
  SCORPIONS=$(egrep -i "$KEYWORDS_SCORPIONS" "$NEWPAGES" | egrep -iv "$KEYWORDS_SCORPIONS_EXCLUDE")

  categorize "ARACHNIDS" "Arachnids"
  categorize "TICKS" "Ticks"
  categorize "SPIDERS" "Spiders"
  categorize "SCORPIONS" "Scorpions"

  debug_end "Arachnids"

fi