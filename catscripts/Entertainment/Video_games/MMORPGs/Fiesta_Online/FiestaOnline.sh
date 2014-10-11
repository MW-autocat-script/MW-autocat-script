#!/bin/bash

export KEYWORDS_MMORPG_FIESTA="Fiesta(| )Online"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Fiesta Online"

  FIESTA=$(egrep -i "$KEYWORDS_MMORPG_FIESTA" "$NEWPAGES")

  categorize "FIESTA" "Fiesta Online"

  debug_end "Fiesta Online"

fi