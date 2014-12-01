#!/bin/bash

KEYWORDS_ALXEMY="Alxemy"
KEYWORDS_ALXEMY_ALL="$KEYWORDS_ALXEMY"

if [ "$1" == "" ];
then
  
  debug_start "Alxemy"

  ALXEMY=$(egrep -i "$KEYWORDS_ALXEMY" "$NEWPAGES")

  categorize "ALXEMY" "Alxemy"

  debug_end "Alxemy"

fi