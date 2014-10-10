#!/bin/bash

KEYWORDS_GUINEABISSAU="Guinea(|-)(| )Bissau"
KEYWORDS_GUINEABISSAU_ALL="$KEYWORDS_GUINEABISSAU"

if [ "$1" == "" ];
then
  
  debug_start "Guinea-Bissau"

  GUINEABISSAU=$(egrep -i "$KEYWORDS_GUINEABISSAU" "$NEWPAGES")

  categorize "GUINEABISSAU" "Guinea-Bissau"

  debug_end "Guinea-Bissau"

fi