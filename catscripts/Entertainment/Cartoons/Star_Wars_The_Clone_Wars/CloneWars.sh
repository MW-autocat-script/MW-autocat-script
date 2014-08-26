#!/bin/bash

KEYWORDS_CLONEWARS="The(| )Clone(| )Wars"

if [ "$1" == "" ];
then

  debug_start "Star Wars: The Clone Wars"

  CLONEWARS=$(egrep -i "$KEYWORDS_CLONEWARS" "$NEWPAGES")

  categorize "CLONEWARS" "Star Wars: The Clone Wars"

  debug_end "Star Wars: The Clone Wars"

fi