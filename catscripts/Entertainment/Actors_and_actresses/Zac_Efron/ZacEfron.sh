#!/bin/bash

KEYWORDS_ACTOR_ZACEFRON="Zac(| )Efron"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Zac Efron"

  ZACEFRON=$(egrep -i "$KEYWORDS_ACTOR_ZACEFRON" "$NEWPAGES")

  categorize "ZACEFRON" "Zac Efron"

  debug_end "Zac Efron"

fi