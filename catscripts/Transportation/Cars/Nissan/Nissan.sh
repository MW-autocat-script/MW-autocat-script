#!/bin/bash

KEYWORDS_NISSANALTIMA="\bAltima"

if [ "$1" == "" ];
then

  debug_start "Nissan Altima"

  ALTIMA=$(egrep -i "$KEYWORDS_NISSANALTIMA" "$NEWPAGES")

  categorize "ALTIMA" "Nissan Altima"

  debug_end "Nissan Altima"

fi