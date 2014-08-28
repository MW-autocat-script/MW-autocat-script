#!/bin/bash

KEYWORDS_BIONICLE="Bionicle"
KEYWORDS_BIONICLE_ALL="$KEYWORDS_BIONICLE"

if [ "$1" == "" ];
then
  
  debug_start "Bionicle"

  BIONICLE=$(egrep -i "$KEYWORDS_BIONICLE" "$NEWPAGES")

  categorize "BIONICLE" "Lego Bionicle"

  debug_end "Bionicle"

fi