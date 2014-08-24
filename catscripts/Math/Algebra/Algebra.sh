#!/bin/bash

KEYWORDS_ALGEBRA="Algebra"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Algebra"

  ALGEBRA=$(egrep -i "$KEYWORDS_ALGEBRA" "$NEWPAGES")

  categorize "ALGEBRA" "Algebra"

  debug_end "Algebra"

fi