#!/bin/bash

KEYWORDS_APPALACHIAN="Appalachian"

if [ "$1" == "" ];
then
  
  debug_start "Appalachian Mountains"

  APPALACHIAN=$(egrep -i "$KEYWORDS_APPALACHIAN" "$NEWPAGES")

  categorize "APPALACHIAN" "Appalachian Mountains"

  debug_end "Appalachian Mountains"

fi