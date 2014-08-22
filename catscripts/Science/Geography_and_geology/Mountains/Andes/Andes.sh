#!/bin/bash

KEYWORDS_ANDES="\bAndes"

if [ "$1" == "" ];
then
  
  debug_start "Andes"

  ANDES=$(egrep -i "$KEYWORDS_ANDES" "$NEWPAGES")

  categorize "ANDES" "Andes"

  debug_end "Andes"

fi