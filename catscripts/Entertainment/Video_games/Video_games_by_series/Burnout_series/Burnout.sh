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

  if [ "$BURNOUT" != "" ];
  then
    printf "%s" "$BURNOUT" > Burnout.txt
    export CATFILE="Burnout.txt"
    export CATNAME="Burnout series"
    $CATEGORIZE
    rm Burnout.txt
    unset BURNOUT
  fi

  if [ "$TWO" != "" ];
  then
    printf "%s" "$TWO" > Burnout2.txt
    export CATFILE="Burnout2.txt"
    export CATNAME="Burnout series"
    $CATEGORIZE
    rm Burnout2.txt
    unset TWO
  fi

  if [ "$THREE" != "" ];
  then
    printf "%s" "$THREE" > Burnout3.txt
    export CATFILE="Burnout3.txt"
    export CATNAME="Burnout series"
    $CATEGORIZE
    rm Burnout3.txt
    unset THREE
  fi

  if [ "$REVENGE" != "" ];
  then
    printf "%s" "$REVENGE" > BurnoutRevenge.txt
    export CATFILE="BurnoutRevenge.txt"
    export CATNAME="Burnout series"
    $CATEGORIZE
    rm BurnoutRevenge.txt
    unset REVENGE
  fi

  if [ "$LEGENDS" != "" ];
  then
    printf "%s" "$LEGENDS" > BurnoutLegends.txt
    export CATFILE="BurnoutLegends.txt"
    export CATNAME="Burnout series"
    $CATEGORIZE
    rm BurnoutLegends.txt
    unset LEGENDS
  fi

  if [ "$DOMINATOR" != "" ];
  then
    printf "%s" "$DOMINATOR" > BurnoutDominator.txt
    export CATFILE="BurnoutDominator.txt"
    export CATNAME="Burnout series"
    $CATEGORIZE
    rm BurnoutDominator.txt
    unset DOMINATOR
  fi

  if [ "$PARADISE" != "" ];
  then
    printf "%s" "$PARADISE" > BurnoutParadise.txt
    export CATFILE="BurnoutParadise.txt"
    export CATNAME="Burnout Paradise"
    $CATEGORIZE
    rm BurnoutParadise.txt
    unset PARADISE
  fi

  if [ "$CRASH" != "" ];
  then
    printf "%s" "$CRASH" > BurnoutCrash.txt
    export CATFILE="BurnoutCrash.txt"
    export CATNAME="Burnout series"
    $CATEGORIZE
    rm BurnoutCrash.txt
    unset CRASH
  fi

  debug_end "Burnout series"

fi