#!/bin/bash

KEYWORDS_MICRONESIA="Micronesia"
KEYWORDS_MICRONESIA_ALL="$KEYWORDS_MICRONESIA"

if [ "$1" == "" ];
then
  
  debug_start "Micronesia"

  MICRONESIA=$(egrep -i "$KEYWORDS_MICRONESIA" "$NEWPAGES")

  categorize "MICRONESIA" "Federated States of Micronesia"

  debug_end "Micronesia"

fi