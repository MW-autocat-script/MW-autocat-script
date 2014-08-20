#!/bin/bash

KEYWORDS_SAUDIARABIA="Saudi(| )Arabia"
KEYWORDS_MECCA="Mecca"
KEYWORDS_MEDINA="Medina"
KEYWORDS_RIYADH="Riyadh"
KEYWORDS_SAUDIARABIA_EXCLUDE="$KEYWORDS_MECCA|$KEYWORDS_MEDINA|$KEYWORDS_RIYADH"
KEYWORDS_SAUDIARABIA_ALL="$KEYWORDS_SAUDIARABIA|$KEYWORDS_MECCA|$KEYWORDS_MEDINA|$KEYWORDS_RIYADH"

if [ "$1" == "" ];
then
  
  debug_start "Saudi Arabia"

  SAUDIARABIA=$(egrep -i "$KEYWORDS_SAUDIARABIA" "$NEWPAGES" | egrep -iv "$KEYWORDS_SAUDIARABIA_EXCLUDE")
  MECCA=$(egrep -i "$KEYWORDS_MECCA" "$NEWPAGES")
  MEDINA=$(egrep -i "$KEYWORDS_MEDINA" "$NEWPAGES")
  RIYADH=$(egrep -i "$KEYWORDS_RIYADH" "$NEWPAGES")

  if [ "$SAUDIARABIA" != "" ];
  then
    printf "%s" "$SAUDIARABIA" > SaudiArabia.txt
    export CATFILE="SaudiArabia.txt"
    export CATNAME="Saudi Arabia"
    $CATEGORIZE
    rm SaudiArabia.txt
    unset SAUDIARABIA
  fi

  if [ "$MECCA" != "" ];
  then
    printf "%s" "$MECCA" > Mecca.txt
    export CATFILE="Mecca.txt"
    export CATNAME="Mecca"
    $CATEGORIZE
    rm Mecca.txt
    unset MECCA
  fi

  if [ "$MEDINA" != "" ];
  then
    printf "%s" "$MEDINA" > Medina.txt
    export CATFILE="Medina.txt"
    export CATNAME="Medina"
    $CATEGORIZE
    rm Medina.txt
    unset MEDINA
  fi

  if [ "$RIYADH" != "" ];
  then
    printf "%s" "$RIYADH" > Riyadh.txt
    export CATFILE="Riyadh.txt"
    export CATNAME="Riyadh"
    $CATEGORIZE
    rm Riyadh.txt
    unset RIYADH
  fi

  debug_end "Saudi Arabia"

fi