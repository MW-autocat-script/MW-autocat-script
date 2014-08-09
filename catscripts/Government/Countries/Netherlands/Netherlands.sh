#!/bin/bash

KEYWORDS_NETHERLANDS="Netherlands"
KEYWORDS_HOLLAND="Holland"
KEYWORDS_HOLLAND_EXCLUDE="(Josiah|Lanie|Sydney|Zara|Jools)(| )Holland|Holland(| )Rosen|Kevin(| )Crossley-Holland"
KEYWORDS_ARUBA="Aruba"
KEYWORDS_NETHERLANDS_EXCLUDE="$KEYWORDS_HOLLAND|$KEYWORDS_ARUBA"
KEYWORDS_NETHERLANDS_ALL="$KEYWORDS_ARUBA|$KEYWORDS_HOLLAND|$KEYWORDS_NETHERLANDS"

if [ "$1" == "" ];
then
  
  debug_start "The Netherlands"

  NETHERLANDS=$(egrep -i "$KEYWORDS_NETHERLANDS" newpages.txt | egrep -iv "$KEYWORDS_NETHERLANDS_EXCLUDE")
  HOLLAND=$(egrep -i "$KEYWORDS_HOLLAND" newpages.txt | egrep -iv "$KEYWORDS_HOLLAND_EXCLUDE")
  ARUBA=$(egrep -i "$KEYWORDS_ARUBA" newpages.txt)

  if [ "$NETHERLANDS" != "" ];
  then
    printf "%s" "$NETHERLANDS" > Netherlands.txt
    export CATFILE="Netherlands.txt"
    export CATNAME="The Netherlands"
    $CATEGORIZE
    rm Netherlands.txt
    unset NETHERLANDS
  fi

  if [ "$HOLLAND" != "" ];
  then
    printf "%s" "$HOLLAND" > Holland.txt
    export CATFILE="Holland.txt"
    export CATNAME="Holland"
    $CATEGORIZE
    rm Holland.txt
    unset HOLLAND
  fi

  if [ "$ARUBA" != "" ];
  then
    printf "%s" "$ARUBA" > Aruba.txt
    export CATFILE="Aruba.txt"
    export CATNAME="Aruba"
    $CATEGORIZE
    rm Aruba.txt
    unset ARUBA
  fi

  debug_end "The Netherlands"

fi