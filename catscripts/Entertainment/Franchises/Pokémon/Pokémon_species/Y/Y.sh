#!/bin/bash

KEYWORDS_YAMASK="Yamask"
KEYWORDS_YANMA="\bYanma"
KEYWORDS_YANMEGA="Yanmega"

if [ "$1" == "" ];
then

  debug_start "Pokemon Y script"

  YAMASK=$(egrep -i "$KEYWORDS_YAMASK" "$NEWPAGES")
  YANMA=$(egrep -i "$KEYWORDS_YANMA" "$NEWPAGES")
  YANMEGA=$(egrep -i "$KEYWORDS_YANMEGA" "$NEWPAGES")

  categorize "YAMASK" "Yamask"
  categorize "YANMA" "Yanma"
  categorize "YANMEGA" "Yanmega"

  debug_end "Pokemon Y script"

fi
