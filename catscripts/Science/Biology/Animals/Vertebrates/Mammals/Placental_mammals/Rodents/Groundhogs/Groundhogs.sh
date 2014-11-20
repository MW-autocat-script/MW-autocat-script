#!/bin/bash

KEYWORDS_GROUNDHOGS="Ground(| )hog|whistle(| )pig|wood(| )chuck"
KEYWORDS_GROUNDHOGS_ALL="$KEYWORDS_GROUNDHOGS"

if [ "$1" == "" ];
then
  
  debug_start "Groundhogs"

  GROUNDHOGS=$(egrep -i "$KEYWORDS_GROUNDHOGS" "$NEWPAGES")

  categorize "GROUNDHOGS" "Groundhogs"

  debug_end "Groundhogs"

fi