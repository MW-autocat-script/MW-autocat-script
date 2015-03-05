#!/bin/bash

KEYWORDS_NATO="( |^)NATO(|s)\b|( |^)N\.A\.T\.O"
KEYWORDS_NATO_ALL="$KEYWORDS_NATO"

if [ "$1" == "" ];
then
  
  debug_start "NATO"

  NATO=$(egrep -i "$KEYWORDS_NATO" "$NEWPAGES")

  categorize "NATO" "NATO"

  debug_end "NATO"

fi