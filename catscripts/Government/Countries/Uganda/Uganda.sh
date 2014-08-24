#!/bin/bash

KEYWORDS_UGANDA="Uganda|Kampala"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Uganda"

  UGANDA=$(egrep -i "$KEYWORDS_UGANDA" "$NEWPAGES")

  categorize "UGANDA" "Uganda"

  debug_end "Uganda"

fi