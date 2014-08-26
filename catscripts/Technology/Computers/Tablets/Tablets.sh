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

  categorize "KINDLE" "Kindle Fire"
  categorize "IPAD" "iPad"
  categorize "TABLETS" "Tablet computers"

  debug_end "Tablet computers"

fi