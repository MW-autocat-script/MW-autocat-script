#!/bin/bash

KEYWORDS_BLACKEYEDPEAS="Black(| )Eyed(| )Peas|will\.i\.am"

if [ "$1" == "" ];
then
  
  debug_start "The Black Eyed Peas"

  BLACKEYEDPEAS="$(egrep -i "$KEYWORDS_BLACKEYEDPEAS" newpages.txt)"

  if [ "$BLACKEYEDPEAS" != "" ];
  then
    printf "%s" "$BLACKEYEDPEAS" > BlackEyedPeas.txt
    export CATFILE="BlackEyedPeas.txt"
    export CATNAME="The Black Eyed Peas"
    $CATEGORIZE
    rm BlackEyedPeas.txt
    unset BLACKEYEDPEAS
  fi

  debug_end "The Black Eyed Peas"

fi