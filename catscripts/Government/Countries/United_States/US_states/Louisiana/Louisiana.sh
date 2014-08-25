#!/bin/bash

KEYWORDS_LOUISIANA="Lou(|i)siana"

if [ "$1" == "" ];
then

  debug_start "Louisiana"

  LOUISIANA=$(egrep -i "$KEYWORDS_LOUISIANA" "$NEWPAGES")

  categorize "LOUISIANA" "Louisiana"

  debug_end "Louisiana"

fi