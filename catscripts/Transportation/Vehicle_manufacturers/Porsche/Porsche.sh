#!/bin/bash

KEYWORDS_PORSCHE="Porsche"

if [ "$1" == "" ];
then

  debug_start "Porsche"

  PORSCHE=$(egrep -i "$KEYWORDS_PORSCHE" "$NEWPAGES")

  categorize "PORSCHE" "Porsche"

  debug_end "Porsche"

fi