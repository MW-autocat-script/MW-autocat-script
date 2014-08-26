#!/bin/bash
#Categorization script for the adult cartoon The Simpsons

KEYWORDS_THESIMPSONS="The(| )Simpsons|(Homer|Marge|Lisa|Bart(|holomew)|Maggie)(| )Simpson|Homer.+Marge|Marge.+Homer|Bart.+Lisa|Lisa.+Bart|Ned(| )Flanders"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "The Simpsons"

  SIMPSONS=$(egrep -i "$KEYWORDS_THESIMPSONS" "$NEWPAGES")

  categorize "SIMPSONS" "The Simpsons"

  debug_end "The Simpsons"

fi