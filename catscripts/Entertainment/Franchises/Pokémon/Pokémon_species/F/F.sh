#!/bin/bash

KEYWORDS_FARFETCHD="Farfetch'd|Farfetchd"
KEYWORDS_FEAROW="Fearow"
KEYWORDS_FEEBAS="Feebas"
KEYWORDS_FERALIGATR="Feraligatr"
KEYWORDS_FERROSEED="Ferroseed"
KEYWORDS_FERROTHORN="Ferrothorn"
KEYWORDS_FINNEON="Finneon"
KEYWORDS_FLAAFFY="Flaaffy"
KEYWORDS_FLAREON="Flareon"
KEYWORDS_FLOATZEL="Floatzel"
KEYWORDS_FLYGON="Flygon"
KEYWORDS_FOONGUS="Foongus"
KEYWORDS_FORRETRESS="Forretress"
KEYWORDS_FRAXURE="Fraxure"
KEYWORDS_FRILLISH="Frillish"
KEYWORDS_FROSLASS="Froslass"
KEYWORDS_FURRET="Furret"
KEYWORDS_POKEMONSPECIES_F="$KEYWORDS_FARFETCHD|$KEYWORDS_FEAROW|$KEYWORDS_FEEBAS|$KEYWORDS_FERALIGATR|$KEYWORDS_FERROSEED|$KEYWORDS_FERROTHORN|$KEYWORDS_FINNEON|$KEYWORDS_FLAAFFY|$KEYWORDS_FLAREON|$KEYWORDS_FLOATZEL|$KEYWORDS_FLYGON|$KEYWORDS_FOONGUS|$KEYWORDS_FORRETRESS|$KEYWORDS_FRAXURE|$KEYWORDS_FRILLISH|$KEYWORDS_FRILLISH|$KEYWORDS_FROSLASS|$KEYWORDS_FURRET"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pokemon F species"

  FARFETCHD=$(egrep -i "$KEYWORDS_FARFETCHD" newpages.txt)
  FEAROW=$(egrep -i "$KEYWORDS_FEAROW" newpages.txt)
  FEEBAS=$(egrep -i "$KEYWORDS_FEEBAS" newpages.txt)
  FERALIGATR=$(egrep -i "$KEYWORDS_FERALIGATR" newpages.txt)
  FERROSEED=$(egrep -i "$KEYWORDS_FERROSEED" newpages.txt)
  FERROTHORN=$(egrep -i "$KEYWORDS_FERROTHORN" newpages.txt)
  FINNEON=$(egrep -i "$KEYWORDS_FINNEON" newpages.txt)
  FLAAFFY=$(egrep -i "$KEYWORDS_FLAAFFY" newpages.txt)
  FLAREON=$(egrep -i "$KEYWORDS_FLAREON" newpages.txt)
  FLOATZEL=$(egrep -i "$KEYWORDS_FLOATZEL" newpages.txt)
  FLYGON=$(egrep -i "$KEYWORDS_FLYGON" newpages.txt)
  FOONGUS=$(egrep -i "$KEYWORDS_FOONGUS" newpages.txt)
  FORRETRESS=$(egrep -i "$KEYWORDS_FORRETRESS" newpages.txt)
  FRAXURE=$(egrep -i "$KEYWORDS_FRAXURE" newpages.txt)
  FRILLISH=$(egrep -i "$KEYWORDS_FRILLISH" newpages.txt)
  FROSLASS=$(egrep -i "$KEYWORDS_FROSLASS" newpages.txt)
  FURRET=$(egrep -i "$KEYWORDS_FURRET" newpages.txt)

  if [ "$FARFETCHD" != "" ];
  then
    printf "%s" "$FARFETCHD" > Farfetchd.txt
    export CATFILE="Farfetchd.txt"
    export CATNAME="Farfetch'd"
    $CATEGORIZE
    rm Farfetchd.txt
    unset FARFETCHD
  fi

  if [ "$FEAROW" != "" ];
  then
    printf "%s" "$FEAROW" > Fearow.txt
    export CATFILE="Fearow.txt"
    export CATNAME="Fearow"
    $CATEGORIZE
    rm Fearow.txt
    unset FEAROW
  fi

  if [ "$FEEBAS" != "" ];
  then
    printf "%s" "$FEEBAS" > Feebas.txt
    export CATFILE="Feebas.txt"
    export CATNAME="Feebas"
    $CATEGORIZE
    rm Feebas.txt
    unset FEEBAS
  fi

  if [ "$FERALIGATR" != "" ];
  then
    printf "%s" "$FERALIGATR" > Feraligatr.txt
    export CATFILE="Feraligatr.txt"
    export CATNAME="Feraligatr"
    $CATEGORIZE
    rm Feraligatr.txt
    unset FERALIGATR
  fi

  if [ "$FERROSEED" != "" ];
  then
    printf "%s" "$FERROSEED" > Ferroseed.txt
    export CATFILE="Ferroseed.txt"
    export CATNAME="Ferroseed"
    $CATEGORIZE
    rm Ferroseed.txt
    unset FERROSEED
  fi

  if [ "$FERROTHORN" != "" ];
  then
    printf "%s" "$FERROTHORN" > Ferrothorn.txt
    export CATFILE="Ferrothorn.txt"
    export CATNAME="Ferrothorn"
    $CATEGORIZE
    rm Ferrothorn.txt
    unset FERROTHORN
  fi

  if [ "$FINNEON" != "" ];
  then
    printf "%s" "$FINNEON" > Finneon.txt
    export CATFILE="Finneon.txt"
    export CATNAME="Finneon"
    $CATEGORIZE
    rm Finneon.txt
    unset FINNEON
  fi

  if [ "$FLAAFFY" != "" ];
  then
    printf "%s" "$FLAAFFY" > Flaaffy.txt
    export CATFILE="Flaaffy.txt"
    export CATNAME="Flaaffy"
    $CATEGORIZE
    rm Flaaffy.txt
    unset FLAAFFY
  fi

  if [ "$FLAREON" != "" ];
  then
    print "%s" "$FLAREON" > Flareon.txt
    export CATFILE="Flareon.txt"
    export CATNAME="Flareon"
    $CATEGORIZE
    rm Flareon.txt
    unset FLAREON
  fi

  if [ "$FLOATZEL" != "" ];
  then
    printf "%s" "$FLOATZEL" > Floatzel.txt
    export CATFILE="Floatzel.txt"
    export CATNAME="Floatzel"
    $CATEGORIZE
    rm Floatzel.txt
    unset FLOATZEL
  fi

  if [ "$FLYGON" != "" ];
  then
    printf "%s" "$FLYGON" > Flygon.txt
    export CATFILE="Flygon.txt"
    export CATNAME="Flygon"
    $CATEGORIZE
    rm Flygon.txt
    unset FLYGON
  fi

  if [ "$FOONGUS" != "" ];
  then
    printf "%s" "$FOONGUS" > Foongus.txt
    export CATFILE="Foongus.txt"
    export CATNAME="Foongus"
    $CATEGORIZE
    rm Foongus.txt
    unset FOONGUS
  fi

  if [ "$FORRETRESS" != "" ];
  then
    printf "%s" "$FORRETRESS" > Forretress.txt
    export CATFILE="Forretress.txt"
    export CATNAME="Forretress"
    $CATEGORIZE
    rm Forretress.txt
    unset FORRETRESS
  fi

  if [ "$FRAXURE" != "" ];
  then
    printf "%s" "$FRAXURE" > Fraxure.txt
    export CATFILE="Fraxure.txt"
    export CATNAME="Fraxure"
    $CATEGORIZE
    rm Fraxure.txt
    unset FRAXURE
  fi

  if [ "$FRILLISH" != "" ];
  then
    printf "%s" "$FRILLISH" > Frillish.txt
    export CATFILE="Frillish.txt"
    export CATNAME="Frillish"
    $CATEGORIZE
    rm Frillish.txt
    unset FRILLISH
  fi

  if [ "$FROSLASS" != "" ];
  then
    printf "%s" "$FROSLASS" > Froslass.txt
    export CATFILE="Froslass.txt"
    export CATNAME="Froslass"
    $CATEGORIZE
    rm Froslass.txt
    unset FROSLASS
  fi

  if [ "$FURRET" != "" ];
  then
    printf "%s" "$FURRET" > Furret.txt
    export CATFILE="Furret.txt"
    export CATNAME="Furret"
    $CATEGORIZE
    rm Furret.txt
    unset FURRET
  fi

  debug_end "Pokemon F scripts"

fi