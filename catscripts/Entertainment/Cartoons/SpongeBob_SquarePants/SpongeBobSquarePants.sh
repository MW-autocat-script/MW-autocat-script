#!/bin/bash
#Categorization script for the children's cartoon SpongeBob SquarePants

KEYWORDS_SPONGEBOB="SpongeBob|sponge bob|SquarePants|Krusty Krab|Patrick Star|Sandy Cheeks|(Eugene|Mr(|\.)) Krabs"

if [ "$1" == "" ];
then

  debug_start "SpongeBob SquarePants"

  SPONGEBOB=$(egrep -i "$KEYWORDS_SPONGEBOB" "$NEWPAGES")

  categorize "SPONGEBOB" "SpongeBob SquarePants"

  debug_end "SpongeBob SquarePants"

fi