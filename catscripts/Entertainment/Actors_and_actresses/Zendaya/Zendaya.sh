#!/bin/bash

KEYWORDS_ZENDAYA="Zendaya"

if [ "$1" == "" ];
then
  
  debug_start "Zendaya"

  ZENDAYA=$(egrep -i "$KEYWORDS_ZENDAYA" "$NEWPAGES")

  categorize "ZENDAYA" "Zendaya"

  debug_end "Zendaya"

fi