#!/bin/bash

KEYWORDS_KUWAIT="Kuwait"
KEYWORDS_KUWAIT_ALL="$KEYWORDS_KUWAIT"

if [ "$1" == "" ];
then
  
  debug_start "Kuwait"

  KUWAIT=$(egrep -i "$KEYWORDS_KUWAIT" "$NEWPAGES")

  categorize "KUWAIT" "Kuwait"

  debug_end "Kuwait"

fi