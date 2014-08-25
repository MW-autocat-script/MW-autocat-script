#!/bin/bash

KEYWORDS_MAURITIUS="Mauriti(us|an)"

if [ "$1" == "" ];
then

  debug_start "Mauritius"

  MAURITIUS=$(egrep -i "$KEYWORDS_MAURITIUS" "$NEWPAGES")

  categorize "MAURITIUS" "Mauritius"

  debug_end "Mauritius"

fi