#!/bin/bash

KEYWORDS_PERCYJACKSON="Percy(| )Jackson"

if [ "$1" == "" ];
then
  
  debug_start "Percy Jackson and the Olympians"

  PERCY=$(egrep -i "$KEYWORDS_PERCYJACKSON" "$NEWPAGES")

  categorize "PERCY" "Percy Jackson and the Olympians"

  debug_end "Percy Jackson and the Olympians"

fi