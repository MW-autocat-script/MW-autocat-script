#!/bin/bash

KEYWORDS_EMILYDICKINSON="Emily(| )Dickinson"

if [ "$1" == "" ];
then
  
  debug_start "Emily Dickinson"

  DICKINSON=$(egrep -i "$KEYWORDS_EMILYDICKINSON" newpages.txt)

  if [ "$DICKINSON" != "" ];
  then
    printf "%s" "$DICKINSON" > EmilyDickinson.txt
    export CATFILE="EmilyDickinson.txt"
    export CATNAME="Emily Dickinsom"
    $CATEGORIZE
    rm EmilyDickinson.txt
    unset DICKINSON
  fi

  debug_end "Emily Dickinson"

fi