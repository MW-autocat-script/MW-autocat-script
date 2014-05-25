#!/bin/bash


if [ "$1" == "" ];
then

  debug_start "Denmark"

  . ./catscripts/Government/Countries/Denmark/Vikings/Vikings.sh #KEYWORDS_VIKINGS

  KEYWORDS_DENMARK="Denmark"
  KEYWORDS_GREENLAND="Greenland"
  KEYWORDS_DENMARK_EXCLUDE="$KEYWORDS_VIKINGS|$KEYWORDS_GREENLAND"

  DENMARK=$(egrep -i "$KEYWORDS_DENMARK" newpages.txt | egrep -iv "$KEYWORDS_DENMARK_EXCLUDE")
  GREENLAND=$(egrep -i "$KEYWORDS_GREENLAND" newpages.txt)

  if [ "$DENMARK" != "" ];
  then
    printf "%s" "$DENMARK" > Denmark.txt
    export CATFILE="Denmark.txt"
    export CATNAME="Denmark"
    $CATEGORIZE
    rm Denmark.txt
    unset DENMARK
  fi

  if [ "$GREENLAND" != "" ];
  then
    printf "%s" "$GREENLAND" > Greenland.txt
    export CATFILE="Greenland.txt"
    export CATNAME="Greenland"
    $CATEGORIZE
    rm Greenland.txt
    unset GREENLAND
  fi

  debug_end "Denmark"

else

  . ./catscripts/Government/Countries/Denmark/Vikings/Vikings.sh norun #KEYWORDS_VIKINGS

  KEYWORDS_DENMARK="Denmark"
  KEYWORDS_GREENLAND="Greenland"
  KEYWORDS_DENMARK_EXCLUDE="$KEYWORDS_VIKINGS|$KEYWORDS_GREENLAND"

fi