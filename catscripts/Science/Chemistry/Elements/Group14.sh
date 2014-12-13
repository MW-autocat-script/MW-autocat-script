#!/bin/bash 

KEYWORDS_CARBON="\bCarbon\b|\bCarbons\b"
KEYWORDS_CARBON_EXCLUDE="Carbon \b.+(ate|ide|ite)|Need For Speed|\bNFS"
KEYWORDS_SILICON="Silicon"
KEYWORDS_SILICON_EXCLUDE="Silicon \b.+(ate|ide|ite)|Silicon Valley"
KEYWORDS_GERMANIUM="Germanium"
KEYWORDS_GERMANIUM_EXCLUDE="Germanium \b.+(ate|ide|ite)"
KEYWORDS_TIN="\bTin\b"
KEYWORDS_TIN_EXCLUDE="Tin(| )(Man|Tower)|RuneScape|card(| )tin"
KEYWORDS_LEAD="\blead.+(atom|proton|neutron|electron|\bion|melt|boil|metal|vapor|magnet|element|compound|toxic|molecule|electricity|conduct|poison|lead weight)|(atom|proton|neutron|electron|\bion|melt|boil|metal|vapor|magnet|element|compound|toxic|molecule|electricity|conduct|poison|lead weight).+\blead"
KEYWORDS_FLEROVIUM="Flerovium"
KEYWORDS_FLEROVIUM_EXCLUDE="Flerovium \b.+(ate|ide|ite)"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Group 14 elements"

  CARBON=$(egrep -i "$KEYWORDS_CARBON" "$NEWPAGES" | egrep -iv "$KEYWORDS_CARBON_EXCLUDE")
  SILICON=$(egrep -i "$KEYWORDS_SILICON" "$NEWPAGES" | egrep -iv "$KEYWORDS_SILICON_EXCLUDE")
  GERMANIUM=$(egrep -i "$KEYWORDS_GERMANIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_GERMANIUM_EXCLUDE")
  TIN=$(egrep -i "$KEYWORDS_TIN" "$NEWPAGES" | egrep -iv "$KEYWORDS_TIN_EXCLUDE")
  LEAD=$(egrep -i "$KEYWORDS_LEAD" "$NEWPAGES")
  FLEROVIUM=$(egrep -i "$KEYWORDS_FLEROVIUM" "$NEWPAGES" | egrep -iv "$KEYWORDS_FLEROVIUM_EXCLUDE")

  categorize "CARBON" "Carbon"
  categorize "SILICON" "Silicon"
  categorize "GERMANIUM" "Germanium"
  categorize "TIN" "Tin"
  categorize "LEAD" "Lead"
  categorize "FLEROVIUM" "Flerovium"

  debug_end "Group 14 elements"

fi