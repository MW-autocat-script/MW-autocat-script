#!/bin/bash

KEYWORDS_BURNOUT_CASESENSITIVE="Burnout"
KEYWORDS_BURNOUTTWO="Burnout(| )2"
KEYWORDS_BURNOUTTHREE="Burnout(| )3"
KEYWORDS_BURNOUTREVENGE="Burnout(| )Revenge"
KEYWORDS_BURNOUTLEGENDS="Burnout(| )Legend"
KEYWORDS_BURNOUTDOMINATOR="Burnout(| )Dominator"
KEYWORDS_BURNOUTPARADISE="Burnout(| )Paradise"
KEYWORDS_BURNOUTCRASH="Burnout(| )Crash"
KEYWORDS_BURNOUT_EXCLUDE="$KEYWORDS_BURNOUTTWO|$KEYWORDS_BURNOUTTHREE|$KEYWORDS_BURNOUTREVENGE|$KEYWORDS_BURNOUTLEGENDS|$KEYWORDS_BURNOUTDOMINATOR|$KEYWORDS_BURNOUTPARADISE|$KEYWORDS_BURNOUTCRASH"

if [ "$1" == "" ];
then

  debug_start "Burnout series"

  BURNOUT=$(egrep "$KEYWORDS_BURNOUT_CASESENSITIVE" "$NEWPAGES" | egrep -iv "$KEYWORDS_BURNOUT_EXCLUDE")
  TWO=$(egrep -i "$KEYWORDS_BURNOUTTWO" "$NEWPAGES")
  THREE=$(egrep -i "$KEYWORDS_BURNOUTTHREE" "$NEWPAGES")
  REVENGE=$(egrep -i "$KEYWORDS_BURNOUTREVENGE" "$NEWPAGES")
  LEGENDS=$(egrep -i "$KEYWORDS_BURNOUTLEGENDS" "$NEWPAGES" )
  DOMINATOR=$(egrep -i "$KEYWORDS_BURNOUTDOMINATOR" "$NEWPAGES")
  PARADISE=$(egrep -i "$KEYWORDS_BURNOUTPARADISE" "$NEWPAGES")
  CRASH=$(egrep -i "$KEYWORDS_BURNOUTCRASH" "$NEWPAGES")

  categorize "BURNOUT" "Burnout series"
  categorize "TWO" "Burnout series"
  categorize "THREE" "Burnout series"
  categorize "REVENGE" "Burnout series"
  categorize "LEGENDS" "Burnout series"
  categorize "DOMINATOR" "Burnout series"
  categorize "PARADISE" "Burnout Paradise"
  categorize "CRASH" "Burnout series"

  debug_end "Burnout series"

fi