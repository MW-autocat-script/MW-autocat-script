#!/bin/bash

KEYWORDS_MINNESOTA="Minnesota"

if [ "$1" == "" ];
then

  debug_start "Minnesota"

  MINNESOTA=$(egrep -i "$KEYWORDS_MINNESOTA" "$NEWPAGES")

  categorize "MINNESOTA" "Minnesota"

  debug_end "Minnesota"

fi