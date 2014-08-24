#!/bin/bash

KEYWORDS_ROALDDAHL="\bDahl(|s)\b|Roald(| )Dahl"

if [ "$1" == "" ];
then
  
  debug_start "Roald Dahl"

  DAHL=$(egrep -i "$KEYWORDS_ROALDDAHL" "$NEWPAGES")

  categorize "DAHL" "Roald Dahl"

  debug_end "Roald Dahl"

fi