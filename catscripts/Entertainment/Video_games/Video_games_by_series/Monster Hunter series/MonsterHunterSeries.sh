#!/bin/bash

KEYWORDS_MONSTERHUNTERSERIES="Monster(| )Hunter"
KEYWORDS_MONSTERHUNTERTWO="Monster(| )Hunter(| )2\b|MH2\b"
KEYWORDS_MONSTERHUNTERFREEDOM="Monster(| )Hunter(| )Freedom"
KEYWORDS_MONSTERHUNTERFREEDOMTWO="Monster(| )Hunter(| )Freedom(| )2|\bMHF2\b"
KEYWORDS_MONSTERHUNTERFREEDOMUNITE="Monster(| )Hunter(| )Freedom(| )Unit.|\bMHFU\b" #The . instead of an 'e' is intentional
KEYWORDS_MONSTERHUNTERFREEDOM_EXCLUDE="$KEYWORDS_MONSTERHUNTERFREEDOMTWO|$KEYWORDS_MONSTERHUNTERFREEDOMUNITE"
KEYWORDS_MONSTERHUNTERFRONTIER="Monster(| )Hunter(| )Frontier"
KEYWORDS_MONSTERHUNTERTRI="Monster(| )Hunter(| )(Tri|3)|\bMH3"
KEYWORDS_MONSTERHUNTERSERIES_EXCLUDE="$KEYWORDS_MONSTERHUNTERTWO|$KEYWORDS_MONSTERHUNTERTRI|$KEYWORDS_MONSTERHUNTERFREEDOM|$KEYWORDS_MONSTERHUNTERFREEDOMUNITE|$KEYWORDS_MONSTERHUNTERFREEDOMTWO|$KEYWORDS_MONSTERHUNTERFRONTIER"

if [ "$1" == "" ];
then

  debug_start "Monster Hunter series"

  SERIES=$(egrep -i "$KEYWORDS_MONSTERHUNTERSERIES" "$NEWPAGES" | egrep -iv "$KEYWORDS_MONSTERHUNTERSERIES_EXCLUDE" )
  MH2=$(egrep -i "$KEYWORDS_MONSTERHUNTERTWO" "$NEWPAGES")
  FREEDOM=$(egrep -i "$KEYWORDS_MONSTERHUNTERFREEDOM" "$NEWPAGES" | egrep -iv "$KEYWORDS_MONSTERHUNTERFREEDOM_EXCLUDE")
  MHFU=$(egrep -i "$KEYWORDS_MONSTERHUNTERFREEDOMUNITE" "$NEWPAGES")
  MHF2=$(egrep -i "$KEYWORDS_MONSTERHUNTERFREEDOMTWO" "$NEWPAGES")
  FRONTIER=$(egrep -i "$KEYWORDS_MONSTERHUNTERFRONTIER" "$NEWPAGES")
  TRI=$(egrep -i "$KEYWORDS_MONSTERHUNTERTRI" "$NEWPAGES")

  if [ "$SERIES" != "" ];
  then
    printf "%s" "$SERIES" > MonsterHunterSeries.txt
    export CATFILE="MonsterHunterSeries.txt"
    export CATNAME="Monster Hunter series"
    $CATEGORIZE
    rm MonsterHunterSeries.txt
    unset SERIES
  fi

  if [ "$MH2" != "" ];
  then
    printf "%s" "$MH2" > MH2.txt
    export CATFILE="MH2.txt"
    export CATNAME="Monster Hunter 2"
    $CATEGORIZE
    rm MH2.txt
    unset MH2
  fi

  if [ "$FREEDOM" != "" ];
  then
    printf "%s" "$FREEDOM" > MonsterHunterFreedom.txt
    export CATFILE="MonsterHunterFreedom.txt"
    export CATNAME="Monster Hunter Freedom"
    $CATEGORIZE
    rm MonsterHunterFreedom.txt
    unset FREEDOM
  fi

  if [ "$MHFU" != "" ];
  then
    printf "%s" "$MHFU" > MonsterHunterFreedomUnite.txt
    export CATFILE="MonsterHunterFreedomUnite.txt"
    export CATNAME="Monster Hunter Freedom Unite"
    $CATEGORIZE
    rm MonsterHunterFreedomUnite.txt
    unset MHFU
  fi

  if [ "$MHF2" != "" ];
  then
    printf "%s" "$MHF2" > MonsterHunterFreedom2.txt
    export CATFILE="MonsterHunterFreedom2.txt"
    export CATNAME="Monster Hunter Freedom 2"
    $CATEGORIZE
    rm MonsterHunterFreedom2.txt
    unset MHF2
  fi

  if [ "$FRONTIER" != "" ];
  then
    printf "%s" "$FRONTIER" > MonsterHunterFrontier.txt
    export CATFILE="MonsterHunterFrontier.txt"
    export CATNAME="Monster Hunter Frontier"
    $CATEGORIZE
    rm MonsterHunterFrontier.txt
    unset FRONTIER
  fi

  if [ "$TRI" != "" ];
  then
    printf "%s" "$TRI" > MonsterHunterTri.txt
    export CATFILE="MonsterHunterTri.txt"
    export CATNAME="Monster Hunter Tri"
    $CATEGORIZE
    rm MonsterHunterTri.txt
    unset TRI
  fi

  debug_end "Monster Hunter series"

fi