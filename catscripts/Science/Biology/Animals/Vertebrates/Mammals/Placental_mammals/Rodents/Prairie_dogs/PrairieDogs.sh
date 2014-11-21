#!/bin/bash

KEYWORDS_PRAIRIEDOGS="Pra(i|)rie(| )dog"
KEYWORDS_PRAIRIEDOGS_ALL="$KEYWORDS_PRAIRIEDOGS"

if [ "$1" == "" ];
then
  
  debug_start "Prairie dogs"

  PRAIRIEDOGS=$(egrep -i "$KEYWORDS_PRAIRIEDOGS" "$NEWPAGES")

  categorize "PRAIRIEDOGS" "Prairie dogs"

  debug_end "Prairie dogs"

fi