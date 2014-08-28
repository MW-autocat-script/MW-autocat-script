#!/bin/bash

KEYWORDS_SCIENTOLOGY="scientology|scientologist|lord xenu"
KEYWORDS_SCIENTOLOGY_ALL="$KEYWORDS_SCIENTOLOGY"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Scientology"

  SCIENTOLOGY=$(egrep -i "$KEYWORDS_SCIENTOLOGY" "$NEWPAGES")

  categorize "SCIENTOLOGY" "Scientology"

  debug_end "Scientology"

fi