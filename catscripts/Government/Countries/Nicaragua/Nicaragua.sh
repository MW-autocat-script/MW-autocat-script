#!/bin/bash

KEYWORDS_NICARAGUA="Nicaragua"

if [ "$1" == "" ];
then

  debug_start "Nicaragua"

  NICARAGUA=$(egrep -i "$KEYWORDS_NICARAGUA" "$NEWPAGES")

  categorize "NICARAGUA" "Nicaragua"

  debug_end "Nicaragua"

fi