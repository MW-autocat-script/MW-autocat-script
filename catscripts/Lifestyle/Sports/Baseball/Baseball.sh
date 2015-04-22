#!/bin/bash

#Baseball and similar

KEYWORDS_BASEBALL="Baseball"
KEYWORDS_MLB="\bMLB|Major(| )League(| )Baseball"
KEYWORDS_BABERUTH="Babe(| )Ruth"
KEYWORDS_JACKIEROBINSON="Jackie(| )Robinson"
KEYWORDS_ATLANTA_BRAVES="Atlanta(| )Braves"
KEYWORDS_MIAMI_MARLINS="Miami(| )Marlins"
KEYWORDS_MLB_EXCLUDE="$KEYWORDS_ATLANTA_BRAVES|$KEYWORDS_MIAMI_MARLINS|$KEYWORDS_BABERUTH|$KEYWORDS_JACKIEROBINSON"
KEYWORDS_BASEBALL_EXCLUDE="$KEYWORDS_MLB|$KEYWORDS_MLB_EXCLUDE"

if [ "$1" == "" ];
then
  
  debug_start "Baseball"

  BASEBALL=$(egrep -i "$KEYWORDS_BASEBALL" "$NEWPAGES" | egrep -iv "$KEYWORDS_BASEBALL_EXCLUDE")
  MLB=$(egrep -i "$KEYWORDS_MLB" "$NEWPAGES" | egrep -iv "$KEYWORDS_MLB_EXCLUDE")
  BABERUTH=$(egrep -i "$KEYWORDS_BABERUTH" "$NEWPAGES")
  JACKIEROBINSON=$(egrep -i "$KEYWORDS_JACKIEROBINSON" "$NEWPAGES")
  ATLANTABRAVES=$(egrep -i "$KEYWORDS_ATLANTA_BRAVES" "$NEWPAGES")
  MIAMIMARLINS=$(egrep -i "$KEYWORDS_MIAMI_MARLINS" "$NEWPAGES")

  categorize "BASEBALL" "Baseball"
  categorize "MLB" "Major League Baseball"
  categorize "BABERUTH" "Babe Ruth"
  categorize "JACKIEROBINSON" "Jackie Robinson"
  categorize "ATLANTABRAVES" "Atlanta Braves"
  categorize "MIAMIMARLINS" "Miami Marlins"

  debug_end "Baseball"

fi