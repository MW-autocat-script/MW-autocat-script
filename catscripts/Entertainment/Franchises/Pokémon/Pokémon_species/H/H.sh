#!/bin/bash

KEYWORDS_HAPPINY="Happiny"
KEYWORDS_HARIYAMA="Hariyama"
KEYWORDS_HAUNTER="Haunter"
KEYWORDS_HAXORUS="Haxorus"
KEYWORDS_HEATMOR="Heatmor"
KEYWORDS_HEATRAN="Heatran"
KEYWORDS_HERACROSS="Heracross"
KEYWORDS_HERDIER="Herdier"
KEYWORDS_HIPPOPOTAS="Hippopotas"
KEYWORDS_HIPPOWDON="Hippowdon"
KEYWORDS_HITMONCHAN="Hitmonchan"
KEYWORDS_HITMONLEE="Hitmonlee"
KEYWORDS_HITMONTOP="Hitmontop"
KEYWORDS_HOOH="Ho-Oh"
KEYWORDS_HONCHKROW="Honchkrow"
KEYWORDS_HOOTHOOT="Hoothoot"
KEYWORDS_HOPPIP="Hoppip"
KEYWORDS_HORSEA="Horsea"
KEYWORDS_HOUNDOOM="Houndoom"
KEYWORDS_HOUNDOUR="Houndour"
KEYWORDS_HUNTAIL="Huntail"
KEYWORDS_HYDREIGON="Hydreigon"
KEYWORDS_HYPNO="Hypno\b"

if [ "$1" == "" ];
then

  debug_start "Pokemon H species"

  HAPPINY=$(egrep -i "$KEYWORDS_HAPPINY" "$NEWPAGES")
  HARIYAMA=$(egrep -i "$KEYWORDS_HARIYAMA" "$NEWPAGES")
  HAUNTER=$(egrep -i "$KEYWORDS_HAUNTER" "$NEWPAGES")
  HAXORUS=$(egrep -i "$KEYWORDS_HAXORUS" "$NEWPAGES")
  HEATMOR=$(egrep -i "$KEYWORDS_HEATMOR" "$NEWPAGES")
  HEATRAN=$(egrep -i "$KEYWORDS_HEATRAN" "$NEWPAGES")
  HERACROSS=$(egrep -i "$KEYWORDS_HERACROSS" "$NEWPAGES")
  HERDIER=$(egrep -i "$KEYWORDS_HERDIER" "$NEWPAGES")
  HIPPOPOTAS=$(egrep -i "$KEYWORDS_HIPPOPOTAS" "$NEWPAGES")
  HIPPOWDON=$(egrep -i "$KEYWORDS_HIPPOWDON" "$NEWPAGES")
  HITMONCHAN=$(egrep -i "$KEYWORDS_HITMONCHAN" "$NEWPAGES")
  HITMONLEE=$(egrep -i "$KEYWORDS_HITMONLEE" "$NEWPAGES")
  HITMONTOP=$(egrep -i "$KEYWORDS_HITMONTOP" "$NEWPAGES")
  HOOH=$(egrep -i "$KEYWORDS_HOOH" "$NEWPAGES")
  HONCHKROW=$(egrep -i "$KEYWORDS_HONCHKROW" "$NEWPAGES")
  HOOTHOOT=$(egrep -i "$KEYWORDS_HOOTHOOT" "$NEWPAGES")
  HOPPIP=$(egrep -i "$KEYWORDS_HOPPIP" "$NEWPAGES")
  HORSEA=$(egrep -i "$KEYWORDS_HORSEA" "$NEWPAGES")
  HOUNDOOM=$(egrep -i "$KEYWORDS_HOUNDOOM" "$NEWPAGES")
  HOUNDOUR=$(egrep -i "$KEYWORDS_HOUNDOUR" "$NEWPAGES")
  HUNTAIL=$(egrep -i "$KEYWORDS_HUNTAIL" "$NEWPAGES")
  HYDREIGON=$(egrep -i "$KEYWORDS_HYDREIGON" "$NEWPAGES")
  HYPNO=$(egrep -i "$KEYWORDS_HYPNO" "$NEWPAGES")

  if [ "$HAPPINY" != "" ];
  then
    printf "%s" "$HAPPINY" > Happiny.txt
    export CATFILE="Happiny.txt"
    export CATNAME="Happiny"
    $CATEGORIZE
    rm Happiny.txt
    unset HAPPINY
  fi

  if [ "$HARIYAMA" != "" ];
  then
    printf "%s" "$HARIYAMA" > Hariyama.txt
    export CATFILE="Hariyama.txt"
    export CATNAME="Hariyama"
    $CATEGORIZE
    rm Hariyama.txt
    unset HARIYAMA
  fi

  if [ "$HAUNTER" != "" ];
  then
    printf "%s" "$HAUNTER" > Haunter.txt
    export CATFILE="Haunter.txt"
    export CATNAME="Haunter"
    $CATEGORIZE
    rm Haunter.txt
    unset HAUNTER
  fi

  if [ "$HAXORUS" != "" ];
  then
    printf "%s" "$HAXORUS" > Haxorus.txt
    export CATFILE="Haxorus.txt"
    export CATNAME="Haxorus"
    $CATEGORIZE
    rm Haxorus.txt
    unset HAXORUS
  fi

  if [ "$HEATMOR" != "" ];
  then
    printf "%s" "$HEATMOR" > Heatmor.txt
    export CATFILE="Heatmor.txt"
    export CATNAME="Heatmor"
    $CATEGORIZE
    rm Heatmor.txt
    unset HEATMOR
  fi

  if [ "$HEATRAN" != "" ];
  then
    printf "%s" "$HEATRAN" > Heatran.txt
    export CATFILE="Heatran.txt"
    export CATNAME="Heatran"
    $CATEGORIZE
    rm Heatran.txt
    unset HEATRAN
  fi

  if [ "$HERACROSS" != "" ];
  then
    printf "%s" "$HERACROSS" > Heracross.txt
    export CATFILE="Heracross.txt"
    export CATNAME="Heracross"
    $CATEGORIZE
    rm Heracross.txt
    unset HERACROSS
  fi

  if [ "$HERDIER" != "" ];
  then
    printf "%s" "$HERDIER" > Herdier.txt
    export CATFILE="Herdier.txt"
    export CATNAME="Herdier"
    $CATEGORIZE
    rm Herdier.txt
    unset HERDIER
  fi

  if [ "$HIPPOPOTAS" != "" ];
  then
    printf "%s" "$HIPPOPOTAS" > Hippopotas.txt
    export CATFILE="Hippopotas.txt"
    export CATNAME="Hippopotas"
    $CATEGORIZE
    rm Hippopotas.txt
    unset HIPPOPOTAS
  fi

  if [ "$HIPPOWDON" != "" ];
  then
    printf "%s" "$HIPPOWDON" > Hippowdon.txt
    export CATFILE="Hippowdon.txt"
    export CATNAME="Hippowdon"
    $CATEGORIZE
    rm Hippowdon.txt
    unset HIPPOWDON
  fi

  if [ "$HITMONCHAN" != "" ];
  then
    printf "%s" "$HITMONCHAN" > Hitmonchan.txt
    export CATFILE="Hitmonchan.txt"
    export CATNAME="Hitmonchan"
    $CATEGORIZE
    rm Hitmonchan.txt
    unset HITMONCHAN
  fi

  if [ "$HITMONLEE" != "" ];
  then
    printf "%s" "$HITMONLEE" > Hitmonlee.txt
    export CATFILE="Hitmonlee.txt"
    export CATNAME="Hitmonlee"
    $CATEGORIZE
    rm Hitmonlee.txt
    unset HITMONLEE
  fi

  if [ "$HITMONTOP" != "" ];
  then
    printf "%s" "$HITMONTOP" > Hitmontop.txt
    export CATFILE="Hitmontop.txt"
    export CATNAME="Hitmontop"
    $CATEGORIZE
    rm Hitmontop.txt
    unset HITMONTOP
  fi

  if [ "$HOOH" != "" ];
  then
    printf "%s" "$HOOH" > Ho-Oh.txt
    export CATFILE="Ho-Oh.txt"
    export CATNAME="Ho-Oh"
    $CATEGORIZE
    rm Ho-Oh.txt
    unset HOOH
  fi

  if [ "$HONCHKROW" != "" ];
  then
    printf "%s" "$HONCHKROW" > Honchkrow.txt
    export CATFILE="Honchkrow.txt"
    export CATNAME="Honchkrow"
    $CATEGORIZE
    rm Honchkrow.txt
    unset HONCHKROW
  fi

  if [ "$HOOTHOOT" != "" ];
  then
    printf "%s" "$HOOTHOOT" > Hoothoot.txt
    export CATFILE="Hoothoot.txt"
    export CATNAME="Hoothoot"
    $CATEGORIZE
    rm Hoothoot.txt
    unset HOOTHOOT
  fi

  if [ "$HOPPIP" != "" ];
  then
    printf "%s" "$HOPPIP" > Hoppip.txt
    export CATFILE="Hoppip.txt"
    export CATNAME="Hoppip"
    $CATEGORIZE
    rm Hoppip.txt
    unset HOPPIP
  fi

  if [ "$HORSEA" != "" ];
  then
    printf "%s" "$HORSEA" > Horsea.txt
    export CATFILE="Horsea.txt"
    export CATNAME="Horsea"
    $CATEGORIZE
    rm Horsea.txt
    unset HORSEA
  fi

  if [ "$HOUNDOOM" != "" ];
  then
    printf "%s" "$HOUNDOOM" > Houndoom.txt
    export CATFILE="Houndoom.txt"
    export CATNAME="Houndoom"
    $CATEGORIZE
    rm Houndoom.txt
    unset HOUNDOOM
  fi

  if [ "$HOUNDOUR" != "" ];
  then
    printf "%s" "$HOUNDOUR" > Houndour.txt
    export CATFILE="Houndour.txt"
    export CATNAME="Houndour"
    $CATEGORIZE
    rm Houndour.txt
    unset HOUNDOUR
  fi

  if [ "$HUNTAIL" != "" ];
  then
    printf "%s" "$HUNTAIL" > Huntail.txt
    export CATFILE="Huntail.txt"
    export CATNAME="Huntail"
    $CATEGORIZE
    rm Huntail.txt
    unset HUNTAIL
  fi

  if [ "$HYDREIGON" != "" ];
  then
    printf "%s" "$HYDREIGON" > Hydreigon.txt
    export CATFILE="Hydreigon.txt"
    export CATNAME="Hydreigon"
    $CATEGORIZE
    rm Hydreigon.txt
    unset HYDREIGON
  fi

  if [ "$HYPNO" != "" ];
  then
    printf "%s" "$HYPNO" > Hypno.txt
    export CATFILE="Hypno.txt"
    export CATNAME="Hypno"
    $CATEGORIZE
    rm Hypno.txt
    unset HYPNO
  fi

  debug_end "Pokemon H species"

fi