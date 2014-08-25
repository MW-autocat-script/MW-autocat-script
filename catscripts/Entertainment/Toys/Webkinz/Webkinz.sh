#!/bin/bash

KEYWORDS_WEBKINZ="Web(| )kinz"
KEYWORDS_WEBKINZ_ALL="$KEYWORDS_WEBKINZ"

if [ "$1" == "" ];
then
  
  debug_start "Webkinz"

  WEBKINZ=$(egrep -i "$KEYWORDS_WEBKINZ" "$NEWPAGES")

  categorize "WEBKINZ" "Webkinz"

  debug_end "Webkinz"

fi