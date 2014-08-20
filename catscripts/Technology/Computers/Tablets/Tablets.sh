#!/bin/bash

KEYWORDS_KINDLEFIRE="Kindle(| )Fire"
KEYWORDS_IPAD="\biPad"
KEYWORDS_TABLETCOMPUTER="Tablet(| )(computer|pc)|Android(| )tablet|Windows(| )8(| )tablet"
KEYWORDS_TABLETCOMPUTER_EXCLUDE="$KEYWORDS_KINDLEFIRE|$KEYWORDS_IPAD"

if [ "$1" == "" ];
then

  debug_start "Tablet computers"

  KINDLE=$(egrep -i "$KEYWORDS_KINDLEFIRE" "$NEWPAGES")
  IPAD=$(egrep -i "$KEYWORDS_IPAD" "$NEWPAGES")
  TABLETS=$(egrep -i "$KEYWORDS_TABLETCOMPUTER" "$NEWPAGES" | egrep -iv "$KEYWORDS_TABLETCOMPUTER_EXCLUDE")

  if [ "$KINDLE" != "" ];
  then
    printf "%s" "$KINDLE" > KindleFire.txt
    export CATFILE="KindleFire.txt"
    export CATNAME="Kindle Fire"
    $CATEGORIZE
    rm KindleFire.txt
    unset KINDLE
  fi

  if [ "$IPAD" != "" ];
  then
    printf "%s" "$IPAD" > iPad.txt
    export CATFILE="iPad.txt"
    export CATNAME="iPad"
    $CATEGORIZE
    rm iPad.txt
    unset IPAD
  fi

  if [ "$TABLETS" != "" ];
  then
    printf "%s" "$TABLETS" > Tabletcomputers.txt
    export CATFILE="Tabletcomputers.txt"
    export CATNAME="Tablet computers"
    $CATEGORIZE
    rm Tabletcomputers.txt
    unset TABLETS
  fi

  debug_end "Tablet computers"

fi