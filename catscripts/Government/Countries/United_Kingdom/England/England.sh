#!/bin/bash

KEYWORDS_ENGLAND="England|British" #Since most people don't know the difference between British and English
KEYWORDS_LONDON="London"
KEYWORDS_BUCKINGHAMPALACE="Buckingham(| )Palace"
KEYWORDS_ELIZABETHTOWER="Elizabeth(| )Tower"
KEYWORDS_LONDON_EXCLUDE="Jack(| )London|$KEYWORDS_BUCKINGHAMPALACE|$KEYWORDS_ELIZABETHTOWER" #Jack London was an American author
KEYWORDS_LONDON_ALL="$KEYWORDS_LONDON|$KEYWORDS_BUCKINGHAMPALACE|$KEYWORDS_ELIZABETHTOWER"
KEYWORDS_STONEHENGE="Stonehenge"
KEYWORDS_ENGLAND_EXCLUDE="$KEYWORDS_LONDON_ALL|$KEYWORDS_STONEHENGE|British(| )Columbia'|New(| )England|Church(| )of(| )England|British(| )Isles"
KEYWORDS_ENGLAND_ALL="$KEYWORDS_ENGLAND|$KEYWORDS_LONDON_ALL|$KEYWORDS_STONEHENGE"

if [ "$1" == "" ];
then

  debug_start "England"

  ENGLAND=$(egrep -i "$KEYWORDS_ENGLAND" "$NEWPAGES" | egrep -iv "$KEYWORDS_ENGLAND_EXCLUDE")
  LONDON=$(egrep -i "$KEYWORDS_LONDON" "$NEWPAGES" | egrep -iv "$KEYWORDS_LONDON_EXCLUDE")
  BUCKINGHAMPALACE=$(egrep -i "$KEYWORDS_BUCKINGHAMPALACE" "$NEWPAGES")
  ELIZABETHTOWER=$(egrep -i "$KEYWORDS_ELIZABETHTOWER" "$NEWPAGES")
  STONEHENGE=$(egrep -i "$KEYWORDS_STONEHENGE" "$NEWPAGES")

  categorize "ENGLAND" "England"
  categorize "LONDON" "London"
  categorize "BUCKINGHAMPALACE" "Buckingham Palace"
  categorize "ELIZABETHTOWER" "Elizabeth Tower"
  categorize "STONEHENGE" "Stonehenge"

  debug_end "England"

fi