#!/bin/bash

KEYWORDS_ROCKYMOUNTAINS="Rocky(| )Mountain|the(| )Rock(ies|ys)"
KEYWORDS_ROCKYMOUNTAINS_EXCLUDE="Rocky(| )Mountain(| )Oysters"

if [ "$1" == "" ];
then
  
  debug_start "Rocky Mountains"

  ROCKYMOUNTAINS=$(egrep -i "$KEYWORDS_ROCKYMOUNTAINS" "$NEWPAGES" | egrep -iv "$KEYWORDS_ROCKYMOUNTAINS_EXCLUDE")

  categorize "ROCKYMOUNTAINS" "Rocky Mountains"

  debug_end "Rocky Mountains"

fi