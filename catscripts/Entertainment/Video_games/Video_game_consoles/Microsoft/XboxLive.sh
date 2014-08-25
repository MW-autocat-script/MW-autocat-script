#!/bin/bash

KEYWORDS_XBOXLIVE="X(|-)box(| )Live"

if [ "$1" == "" ];
then
  
  debug_start "Xbox Live"

  XBOXLIVE=$(egrep -i "$KEYWORDS_XBOXLIVE" "$NEWPAGES")

  categorize "XBOXLIVE" "Xbox Live"

  debug_end "Xbox Live"

fi