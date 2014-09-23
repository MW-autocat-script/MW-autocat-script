#!/bin/bash

KEYWORDS_TEXAS="Texa(s|n)"
KEYWORDS_DALLAS="Dallas"
KEYWORDS_HOUSTON="Houston"
KEYWORDS_SANANTONIO="San(| )Antonio"
KEYWORDS_TEXAS_EXCLUDE="$KEYWORDS_DALLAS|$KEYWORDS_HOUSTON|$KEYWORDS_SANANTONIO"
KEYWORDS_DALLAS_EXCLUDE="Dallas(| )Cowboys"
KEYWORDS_HOUSTON_EXCLUDE="(Sam|Whitney)(| )Houston"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Texas"

  TEXAS=$(egrep -i "$KEYWORDS_TEXAS" "$NEWPAGES" | egrep -iv "$KEYWORDS_TEXAS_EXCLUDE")
  DALLAS=$(egrep -i "$KEYWORDS_DALLAS" "$NEWPAGES" | egrep -iv "$KEYWORDS_DALLAS_EXCLUDE")
  HOUSTON=$(egrep -i "$KEYWORDS_HOUSTON" "$NEWPAGES" | egrep -iv "$KEYWORDS_HOUSTON_EXCLUDE")
  SANANTONIO=$(egrep -i "$KEYWORDS_SANANTONIO" "$NEWPAGES")

  categorize "TEXAS" "Texas"
  categorize "DALLAS" "Dallas"
  categorize "HOUSTON" "Houston"
  categorize "SANANTONIO" "San Antonio"

  debug_end "Texas"

fi