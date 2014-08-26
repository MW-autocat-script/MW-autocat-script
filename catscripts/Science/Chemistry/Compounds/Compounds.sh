#!/bin/bash

##Carbon compounds

KEYWORDS_CARBONDIOXIDE="Carbon(| )dioxide"
KEYWORDS_CARBONMONOXIDE="Carbon(| )monoxide"

if [ "$1" == "" ];
then

  debug_start "Compounds"

  CO=$(egrep -i "$KEYWORDS_CARBONDIOXIDE" "$NEWPAGES")
  COTWO=$(egrep -i "$KEYWORDS_CARBONMONOXIDE" "$NEWPAGES")

  categorize "CO" "Carbon monoxide"

  categorize "COTWO" "Carbon dioxide"

  debug_end "Compounds"

fi
