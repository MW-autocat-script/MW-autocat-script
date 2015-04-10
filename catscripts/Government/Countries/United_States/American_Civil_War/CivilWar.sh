#!/bin/bash

KEYWORDS_USCIVILWAR="(American|United(| )States|U(|\.)S(|\.))(| )Civil(| )War"
KEYWORDS_USCIVILWAR_ALL="$KEYWORDS_USCIVILWAR"

if [ "$1" == "" ];
then
  
  debug_start "American Civil War"

  CIVILWAR=$(egrep -i "$KEYWORDS_USCIVILWAR" "$NEWPAGES")
  categorize "CIVILWAR" "American Civil War"

  debug_end "American Civil War"

fi