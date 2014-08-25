#!/bin/bash

KEYWORDS_BARBADOS="Barbados|Barbadoan"

if [ "$1" == "" ];
then

  debug_start "Barbados"

  BARBADOS=$(egrep -i "$KEYWORDS_BARBADOS" "$NEWPAGES")

  categorize "BARBADOS" "Barbados"

  debug_end "Barbados"

fi