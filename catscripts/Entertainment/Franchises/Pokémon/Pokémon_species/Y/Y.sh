#!/bin/bash

KEYWORDS_YAMASK="Yamask"
KEYWORDS_YANMA="\bYanma"
KEYWORDS_YANMEGA="Yanmega"
KEYWORDS_YVELTAL="Yveltal"

KEYWORDS_POKEMONSPECIES_Y="$KEYWORDS_YAMASK|$KEYWORDS_YANMA|$KEYWORDS_YANMEGA|$KEYWORDS_YVELTAL"

if [ "$1" == "" ];
then

  debug_start "Pokemon Y script"

  YAMASK=$(egrep -i "$KEYWORDS_YAMASK" "$NEWPAGES")
  YANMA=$(egrep -i "$KEYWORDS_YANMA" "$NEWPAGES")
  YANMEGA=$(egrep -i "$KEYWORDS_YANMEGA" "$NEWPAGES")
  YVELTAL=$(egrep -i "$KEYWORDS_YVELTAL" "$NEWPAGES")

  categorize "YAMASK" "Yamask"
  categorize "YANMA" "Yanma"
  categorize "YANMEGA" "Yanmega"
  categorize "YVELTAL" "Yveltal"

  debug_end "Pokemon Y script"

fi
