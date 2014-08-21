#!/bin/bash

KEYWORDS_GRENADA="Grenada"
KEYWORDS_GRENADA_ALL="$KEYWORDS_GRENADA"

if [ "$1" == "" ];
then

  debug_start "Grenada"

  GRENADA=$(egrep -i "$KEYWORDS_GRENADA" "$NEWPAGES")

  categorize "GRENADA" "Grenada"

  debug_end "Grenada"

fi