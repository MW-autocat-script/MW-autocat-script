#!/bin/bash

KEYWORDS_ASSASSINSCREED="Assassin('|)s(| )Creed"
KEYWORDS_CREEDTWO="Assassin('|)s(| )Creed(| )(2|II\b)"
KEYWORDS_CREEDTHREE="Assassin('|)s(| )Creed(| )(3|III\b)"
KEYWORDS_ASSASSINSCREED_EXCLUDE="$KEYWORDS_CREEDTWO|$KEYWORDS_CREEDTHREE"

if [ "$1" == "" ];
then

  debug_start "Assassin's Creed series"

SERIES=$(egrep -i "$KEYWORDS_ASSASSINSCREED" "$NEWPAGES" | egrep -iv "$KEYWORDS_ASSASSINSCREED_EXCLUDE")
TWO=$(egrep -i "$KEYWORDS_CREEDTWO" "$NEWPAGES")
THREE=$(egrep -i "$KEYWORDS_CREEDTHREE" "$NEWPAGES")

  categorize "SERIES" "Assassin's Creed series"
  categorize "TWO" "Assassin's Creed II"
  categorize "THREE" "Assassin's Creed III"

  debug_end "Assassin's Creed series"

fi