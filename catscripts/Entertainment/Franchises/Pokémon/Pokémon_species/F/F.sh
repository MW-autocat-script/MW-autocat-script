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

  FARFETCHD=$(egrep -i "$KEYWORDS_FARFETCHD" "$NEWPAGES")
  FEAROW=$(egrep -i "$KEYWORDS_FEAROW" "$NEWPAGES")
  FEEBAS=$(egrep -i "$KEYWORDS_FEEBAS" "$NEWPAGES")
  FERALIGATR=$(egrep -i "$KEYWORDS_FERALIGATR" "$NEWPAGES")
  FERROSEED=$(egrep -i "$KEYWORDS_FERROSEED" "$NEWPAGES")
  FERROTHORN=$(egrep -i "$KEYWORDS_FERROTHORN" "$NEWPAGES")
  FINNEON=$(egrep -i "$KEYWORDS_FINNEON" "$NEWPAGES")
  FLAAFFY=$(egrep -i "$KEYWORDS_FLAAFFY" "$NEWPAGES")
  FLAREON=$(egrep -i "$KEYWORDS_FLAREON" "$NEWPAGES")
  FLOATZEL=$(egrep -i "$KEYWORDS_FLOATZEL" "$NEWPAGES")
  FLYGON=$(egrep -i "$KEYWORDS_FLYGON" "$NEWPAGES")
  FOONGUS=$(egrep -i "$KEYWORDS_FOONGUS" "$NEWPAGES")
  FORRETRESS=$(egrep -i "$KEYWORDS_FORRETRESS" "$NEWPAGES")
  FRAXURE=$(egrep -i "$KEYWORDS_FRAXURE" "$NEWPAGES")
  FRILLISH=$(egrep -i "$KEYWORDS_FRILLISH" "$NEWPAGES")
  FROSLASS=$(egrep -i "$KEYWORDS_FROSLASS" "$NEWPAGES")
  FURRET=$(egrep -i "$KEYWORDS_FURRET" "$NEWPAGES")

  categorize "FARFETCHD" "Farfetch'd"
  categorize "FEAROW" "Fearow"
  categorize "FEEBAS" "Feebas"
  categorize "FERALIGATR" "Feraligatr"
  categorize "FERROSEED" "Ferroseed"
  categorize "FERROTHORN" "Ferrothorn"
  categorize "FINNEON" "Finneon"
  categorize "FLAAFFY" "Flaaffy"
  categorize "FLAREON" "Flareon"
  categorize "FLOATZEL" "Floatzel"
  categorize "FLYGON" "Flygon"
  categorize "FOONGUS" "Foongus"
  categorize "FORRETRESS" "Forretress"
  categorize "FRAXURE" "Fraxure"
  categorize "FRILLISH" "Frillish"
  categorize "FROSLASS" "Froslass"
  categorize "FURRET" "Furret"

  debug_end "Pokemon F scripts"

fi