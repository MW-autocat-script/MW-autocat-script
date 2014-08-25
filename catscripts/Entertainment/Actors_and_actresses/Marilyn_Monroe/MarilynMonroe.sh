#!/bin/bash

KEYWORDS_ACTRESS_MARILYNMONROE="Marilyn(| )Monroe"

if [ "$1" == "" ];
then

  debug_start "Marilyn Monroe"

  MARILYNMONROE=$(egrep -i "$KEYWORDS_ACTRESS_MARILYNMONROE" "$NEWPAGES")

  categorize "MARILYNMONROE" "Marilyn Monroe"

  debug_end "Marilyn Monroe"

fi