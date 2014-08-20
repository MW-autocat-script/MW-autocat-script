#!/bin/bash 

KEYWORDS_CARBON="\bCarbon\b|\bCarbons\b"
KEYWORDS_CARBON_EXCLUDE="Carbon \b.+(ate|ide|ite)|Need For Speed|\bNFS"
KEYWORDS_SILICON="Silicon"
KEYWORDS_SILICON_EXCLUDE="Silicon \b.+(ate|ide|ite)|Silicon Valley"
KEYWORDS_GERMANIUM="Germanium"
KEYWORDS_GERMANIUM_EXCLUDE="Germanium \b.+(ate|ide|ite)"
KEYWORDS_TIN="\bTin\b"
KEYWORDS_TIN_EXCLUDE="Tin \b.+(ate|ide|ite)|Tin Man|Tin Tower|RuneScape"
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

  if [ "$CARBON" != "" ];
  then
    printf "%s" "$CARBON" > Carbon.txt
    export CATFILE="Carbon.txt"
    export CATNAME="Carbon"
    $CATEGORIZE
    rm Carbon.txt
    unset CARBON
  fi

  if [ "$SILICON" != "" ];
  then
    printf "%s" "$SILICON" > Silicon.txt
    export CATFILE="Silicon.txt"
    export CATNAME="Silicon"
    $CATEGORIZE
    rm Silicon.txt
    unset SILICON
  fi

  if [ "$GERMANIUM" != "" ];
  then
    printf "%s" "$GERMANIUM" > Germanium.txt
    export CATFILE="Germanium.txt"
    export CATNAME="Germanium"
    $CATEGORIZE
    rm Germanium.txt
    unset GERMANIUM
  fi

  if [ "$TIN" != "" ];
  then
    printf "%s" "$TIN" > Tin.txt
    export CATFILE="Tin.txt"
    export CATNAME="Tin"
    $CATEGORIZE
    rm Tin.txt
    unset TIN
  fi

  if [ "$LEAD" != "" ];
  then
    printf "%s" "$LEAD" > Lead.txt
    export CATFILE="Lead.txt"
    export CATNAME="Lead"
    $CATEGORIZE
    rm Lead.txt
    unset LEAD
  fi

  if [ "$FLEROVIUM" != "" ];
  then
    printf "%s" "$FLEROVIUM" > Flerovium.txt
    export CATFILE="Flerovium.txt"
    export CATNAME="Flerovium"
    $CATEGORIZE
    rm Flerovium.txt
    unset FLEROVIUM
  fi

  debug_end "Group 14 elements"

fi