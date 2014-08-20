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

  if [ "$SERIES" != "" ];
  then
    printf "%s" "$SERIES" > HaloSeries.txt
    export CATFILE="HaloSeries.txt"
    export CATNAME="Halo series"
    $CATEGORIZE
    rm HaloSeries.txt
    unset SERIES
  fi


  if [ "$HALO1" != "" ];
  then
    printf "%s" "$HALO1" > Halo1.txt
    export CATFILE="Halo1.txt"
    export CATNAME="Halo: Combat Evolved"
    $CATEGORIZE
    rm Halo1.txt
    unset HALO1
  fi

  if [ "$HALO2" != "" ];
  then
    printf "%s" "$HALO2" > Halo2.txt
    export CATFILE="Halo2.txt"
    export CATNAME="Halo 2"
    $CATEGORIZE
    rm Halo2.txt
    unset HALO2
  fi

  if [ "$HALO3" != "" ];
  then
    printf "%s" "$HALO3" > Halo3.txt
    export CATFILE="Halo3.txt"
    export CATNAME="Halo 3"
    $CATEGORIZE
    rm Halo3.txt
    unset HALO3
  fi

  if [ "$HALO4" != "" ];
  then
    printf "%s" "$HALO4" > Halo4.txt
    export CATFILE="Halo4.txt"
    export CATNAME="Halo 4"
    $CATEGORIZE
    rm Halo4.txt
    unset HALO4
  fi

  if [ "$ODST" != "" ];
  then
    printf "%s" "$ODST" > ODST.txt
    export CATFILE="ODST.txt"
    export CATNAME="Halo 3: ODST"
    $CATEGORIZE
    rm ODST.txt
    unset ODST
  fi

  if [ "$HALOWARS" != "" ];
  then
    printf "%s" "$HALOWARS" > HaloWars.txt
    export CATFILE="HaloWars.txt"
    export CATNAME="Halo Wars"
    $CATEGORIZE
    rm HaloWars.txt
    unset HALOWARS
  fi

  debug_end "Halo series"

fi
