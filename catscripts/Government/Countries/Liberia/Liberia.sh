#!/bin/bash

KEYWORDS_LIBERIA="Liberia"
KEYWORDS_LIBERIA_ALL="$KEYWORDS_LIBERIA"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Liberia"

  LIBERIA=$(egrep -i "$KEYWORDS_LIBERIA" "$NEWPAGES")

  categorize "LIBERIA" "Liberia"

  debug_end "Liberia"

fi