#!/bin/bash

KEYWORDS_MYCHEMICALROMANCE="My(| )Chemical(| )Romance|\bMCR\b"

if [ "$1" == "" ];
then

  debug_start "My Chemical Romance"

  MCR=$(egrep -i "$KEYWORDS_MYCHEMICALROMANCE" "$NEWPAGES")

  categorize "MCR" "My Chemical Romance"

  debug_end "My Chemical Romance"

fi