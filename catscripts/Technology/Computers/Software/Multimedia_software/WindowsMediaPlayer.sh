#!/bin/bash

KEYWORDS_WINDOWSMEDIAPLAYER="Windows(| )Media(| )Player|\bWMP\b"

if [ "$1" == "" ];
then

  debug_start "Windows Media Player"

  WMP=$(egrep -i "$KEYWORDS_WINDOWSMEDIAPLAYER" "$NEWPAGES")

  categorize "WMP" "Windows Media Player"

  debug_end "Windows Media Player"

fi