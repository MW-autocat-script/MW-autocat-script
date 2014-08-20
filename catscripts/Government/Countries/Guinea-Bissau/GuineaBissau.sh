#!/bin/bash

KEYWORDS_GUINEABISSAU="Guinea(|-)(| )Bissau"
KEYWORDS_GUINEABISSAU_ALL="$KEYWORDS_GUINEABISSAU"

if [ "$1" == "" ];
then
  
  debug_start "Guinea-Bissau"

  GUINEABISSAU=$(egrep -i "$KEYWORDS_GUINEABISSAU" "$NEWPAGES")

  if [ "$GUINEABISSAU" != "" ];
  then
    printf "%s" "$GUINEABISSAU" > GuineaBissau.txt
    export CATFILE="GuineaBissau.txt"
    export CATNAME="Guinea-Bissau"
    $CATEGORIZE
    rm GuineaBissau.txt
    unset GUINEABISSAU
  fi

  debug_end "Guinea-Bissau"

fi