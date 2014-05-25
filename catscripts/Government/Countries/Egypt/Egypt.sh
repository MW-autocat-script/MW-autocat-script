#!/bin/bash

KEYWORDS_EGYPT="Egypt(|s|ian)"
KEYWORDS_ANCIENTEGYPYT="ancient(| )Egypt|Tutankhamen|Tutencarmoon|tootencarmoon"
KEYWORDS_NILERIVER="Nile(| )River|River(| )Nile|Nile(| )delta|Aswan(| )dam"
KEYWORDS_EGYPT_EXCLUDE="$KEYWORDS_NILERIVER|$KEYWORDS_ANCIENTEGYPYT"
KEYWORDS_EGYPT_ALL="$KEYWORDS_EGYPT|$KEYWORDS_NILERIVER|$KEYWORDS_ANCIENTEGYPYT"

if [ "$1" == "" ];
then

  debug_start "Egypt"

  EGYPT=$(egrep -i "$KEYWORDS_EGYPT" newpages.txt | egrep -iv "$KEYWORDS_EGYPT_EXCLUDE")
  ANCIENT=$(egrep -i "$KEYWORDS_ANCIENTEGYPYT" newpages.txt)
  NILE=$(egrep -i "$KEYWORDS_NILERIVER" newpages.txt)

  if [ "$EGYPT" != "" ];
  then
    printf "%s" "$EGYPT" > Egypt.txt
    export CATFILE="Egypt.txt"
    export CATNAME="Egypt"
    $CATEGORIZE
    rm Egypt.txt
    unset EGYPT
  fi

  if [ "$ANCIENT" != "" ];
  then
    printf "%s" "$ANCIENT" > AncientEgypt.txt
    export CATFILE="AncientEgypt.txt"
    export CATNAME="Ancient Egypt"
    $CATEGORIZE
    rm AncientEgypt.txt
    unset ANCIENT
  fi

  if [ "$NILE" != "" ];
  then
    printf "%s" "$NILE" > NileRiver.txt
    export CATFILE="NileRiver.txt"
    export CATNAME="Nile River"
    $CATEGORIZE
    rm NileRiver.txt
    unset NILE
  fi

  debug_end "Egypt"

fi