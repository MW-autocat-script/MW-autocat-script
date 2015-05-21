#!/bin/bash

KEYWORDS_MARSHALLISLANDS="Marshal(|l)(| )Island"
KEYWORDS_MARSHALLISLANDS_ALL="$KEYWORDS_MARSHALLISLANDS"

if [ "$1" == "" ];
then
  
  debug_start "Marshall Islands"

  MARSHALLISLANDS=$(egrep -i "$KEYWORDS_MARSHALLISLANDS" "$NEWPAGES")

  categorize "MARSHALLISLANDS" "Marshall Islands"

  debug_end "Marshall Islands"

fi