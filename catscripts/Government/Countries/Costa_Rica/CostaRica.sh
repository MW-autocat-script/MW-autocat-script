#!/bin/bash

KEYWORDS_COSTARICA="Costa(| )Rica"
KEYWORDS_COSTARICA_ALL="$KEYWORDS_COSTARICA"

if [ "$1" == "" ];
then
  
  debug_start "Costa Rica"

  COSTARICA=$(egrep -i "$KEYWORDS_COSTARICA" "$NEWPAGES")

  categorize "COSTARICA" "Costa Rica"

  debug_end "Costa Rica"

fi