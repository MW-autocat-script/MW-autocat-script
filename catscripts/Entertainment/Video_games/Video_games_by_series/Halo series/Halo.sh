#!/bin/bash

KEYWORDS_HALOONE="Halo(|\:)(| )(CE|Combat(| )Evolved|Custom(| )Edition)|Halo(| )1"
KEYWORDS_HALOTWO="Halo(| )2"
KEYWORDS_HALOTHREE="Halo(| )3"
KEYWORDS_HALOODST="\bODST"
KEYWORDS_HALOTHREE_EXCLUDE="$KEYWORDS_HALOODST"
KEYWORDS_HALOFOUR="Halo(| )4"
KEYWORDS_HALOWARS="Halo(| )Wars"
KEYWORDS_HALOSERIES="Halo(| )(game|series)|Cortana|(Captain|Miranda)(| )Keyes|John(|-)(| )117"
KEYWORDS_HALOSERIES_EXCLUDE="$KEYWORDS_HALOONE|$KEYWORDS_HALOTWO|$KEYWORDS_HALOTHREE|$KEYWORDS_HALOODST|$KEYWORDS_HALOFOUR|$KEYWORDS_HALOWARS"

if [ "$1" == "" ];
then

  debug_start "Halo series"

  HALO1=$(egrep -i "$KEYWORDS_HALOONE" "$NEWPAGES")
  HALO2=$(egrep -i "$KEYWORDS_HALOTWO" "$NEWPAGES")
  HALO3=$(egrep -i "$KEYWORDS_HALOTHREE" "$NEWPAGES" | egrep -iv "$KEYWORDS_HALOTHREE_EXCLUDE")
  ODST=$(egrep -i "$KEYWORDS_HALOODST" "$NEWPAGES")
  HALO4=$(egrep -i "$KEYWORDS_HALOFOUR" "$NEWPAGES")
  HALOWARS=$(egrep -i "$KEYWORDS_HALOWARS" "$NEWPAGES")
  SERIES=$(egrep -i "$KEYWORDS_HALOSERIES" "$NEWPAGES" | egrep -iv "$KEYWORDS_HALOSERIES_EXCLUDE")

  categorize "SERIES" "Halo series"
  categorize "HALO1" "Halo: Combat Evolved"
  categorize "HALO2" "Halo 2"
  categorize "HALO3" "Halo 3"
  categorize "HALO4" "Halo 4"
  categorize "ODST" "Halo 3: ODST"
  categorize "HALOWARS" "Halo Wars"

  debug_end "Halo series"

fi
