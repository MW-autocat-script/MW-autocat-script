#!/bin/bash

KEYWORDS_BUILDABEAR="Build(|-| )a(|-| )Bear"

if [ "$1" == "" ];
then
  
  debug_start "Build-A-Bear"

  BUILDABEAR=$(egrep -i "$KEYWORDS_BUILDABEAR" "$NEWPAGES")

  categorize "BUILDABEAR" "Build-A-Bear"

  debug_end "Build-A-Bear"

fi