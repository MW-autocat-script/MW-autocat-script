#!/bin/bash

KEYWORDS_NIGERIA="Nigeria"
KEYWORDS_NIGERIA_ALL="Nigeria"

if [ "$1" == "" ];
then
  
  debug_start "Nigeria"

  NIGERIA=$(egrep -i "$KEYWORDS_NIGERIA" "$NEWPAGES")

  categorize "NIGERIA" "Nigeria"

  debug_end "Nigeria"

fi