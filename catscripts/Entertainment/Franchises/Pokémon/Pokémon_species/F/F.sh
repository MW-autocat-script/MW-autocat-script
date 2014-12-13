#!/bin/bash

KEYWORDS_FARFETCHD="Farfetch'd|Farfetchd"
KEYWORDS_FEAROW="Fearow"
KEYWORDS_FEEBAS="Feebas"
KEYWORDS_FENNEKIN="Fennekin"
KEYWORDS_FERALIGATR="Feraligatr"
KEYWORDS_FERROSEED="Ferroseed"
KEYWORDS_FERROTHORN="Ferrothorn"
KEYWORDS_FINNEON="Finneon"
KEYWORDS_FLAAFFY="Flaaffy"
KEYWORDS_FLABEBE="Flab(é|e)b(é|e)"
KEYWORDS_FLAREON="Flareon"
KEYWORDS_FLETCHINDER="Fletchinder"
KEYWORDS_FLETCHLING="Fletchling"
KEYWORDS_FLOATZEL="Floatzel"
KEYWORDS_FLOETTE="Floette"
KEYWORDS_FLORGES="Florges"
KEYWORDS_FLYGON="Flygon"
KEYWORDS_FOONGUS="Foongus"
KEYWORDS_FORRETRESS="Forretress"
KEYWORDS_FRAXURE="Fraxure"
KEYWORDS_FRILLISH="Frillish"
KEYWORDS_FROAKIE="Froakie"
KEYWORDS_FROGADIER="Frogadier"
KEYWORDS_FROSLASS="Froslass"
KEYWORDS_FURFROU="Furfrou"
KEYWORDS_FURRET="Furret"
KEYWORDS_POKEMONSPECIES_F="$KEYWORDS_FARFETCHD|$KEYWORDS_FEAROW|$KEYWORDS_FEEBAS|$KEYWORDS_FENNEKIN|$KEYWORDS_FERALIGATR|$KEYWORDS_FERROSEED|$KEYWORDS_FERROTHORN|$KEYWORDS_FINNEON|$KEYWORDS_FLAAFFY|$KEYWORDS_FLABEBE|$KEYWORDS_FLAREON|$KEYWORDS_FLETCHLING|$KEYWORDS_FLOATZEL|$KEYWORDS_FLOETTE|$KEYWORDS_FLORGES|$KEYWORDS_FLYGON|$KEYWORDS_FOONGUS|$KEYWORDS_FORRETRESS|$KEYWORDS_FRAXURE|$KEYWORDS_FRILLISH|$KEYWORDS_FRILLISH|$KEYWORDS_FROGADIER|$KEYWORDS_FROSLASS|$KEYWORDS_FURRET"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pokemon F species"

  FARFETCHD=$(egrep -i "$KEYWORDS_FARFETCHD" "$NEWPAGES")
  FEAROW=$(egrep -i "$KEYWORDS_FEAROW" "$NEWPAGES")
  FEEBAS=$(egrep -i "$KEYWORDS_FEEBAS" "$NEWPAGES")
  FENNEKIN=$(egrep -i "$KEYWORDS_FENNEKIN" "$NEWPAGES")
  FERALIGATR=$(egrep -i "$KEYWORDS_FERALIGATR" "$NEWPAGES")
  FERROSEED=$(egrep -i "$KEYWORDS_FERROSEED" "$NEWPAGES")
  FERROTHORN=$(egrep -i "$KEYWORDS_FERROTHORN" "$NEWPAGES")
  FINNEON=$(egrep -i "$KEYWORDS_FINNEON" "$NEWPAGES")
  FLAAFFY=$(egrep -i "$KEYWORDS_FLAAFFY" "$NEWPAGES")
  FLABEBE=$(egrep -i "$KEYWORDS_FLABEBE" "$NEWPAGES")
  FLAREON=$(egrep -i "$KEYWORDS_FLAREON" "$NEWPAGES")
  FLETCHINDER=$(egrep -i "$KEYWORDS_FLETCHINDER" "$NEWPAGES")
  FLETCHLING=$(egrep -i "$KEYWORDS_FLETCHLING" "$NEWPAGES")
  FLOATZEL=$(egrep -i "$KEYWORDS_FLOATZEL" "$NEWPAGES")
  FLOETTE=$(egrep -i "$KEYWORDS_FLOETTE" "$NEWPAGES")
  FLORGES=$(egrep -i "$KEYWORDS_FLORGES" "$NEWPAGES"
  FLYGON=$(egrep -i "$KEYWORDS_FLYGON" "$NEWPAGES")
  FOONGUS=$(egrep -i "$KEYWORDS_FOONGUS" "$NEWPAGES")
  FORRETRESS=$(egrep -i "$KEYWORDS_FORRETRESS" "$NEWPAGES")
  FRAXURE=$(egrep -i "$KEYWORDS_FRAXURE" "$NEWPAGES")
  FRILLISH=$(egrep -i "$KEYWORDS_FRILLISH" "$NEWPAGES")
  FROAKIE=$(egrep -i "$KEYWORDS_FROAKIE" "$NEWPAGES")
  FROGADIER=$(egrep -i "$KEYWORDS_FROGADIER" "$NEWPAGES")
  FROSLASS=$(egrep -i "$KEYWORDS_FROSLASS" "$NEWPAGES")
  FURFROU=$(egrep -i "$KEYWORDS_FURFROU" "$NEWPAGES")
  FURRET=$(egrep -i "$KEYWORDS_FURRET" "$NEWPAGES")

  categorize "FARFETCHD" "Farfetch'd"
  categorize "FEAROW" "Fearow"
  categorize "FEEBAS" "Feebas"
  categorize "FENNEKIN" "Fennekin"
  categorize "FERALIGATR" "Feraligatr"
  categorize "FERROSEED" "Ferroseed"
  categorize "FERROTHORN" "Ferrothorn"
  categorize "FINNEON" "Finneon"
  categorize "FLAAFFY" "Flaaffy"
  categorize "FLABEBE" "Flabébé"
  categorize "FLAREON" "Flareon"
  categorize "FLETCHINDER" "Fletchinder"
  categorize "FLETCHLING" "Fletchling"
  categorize "FLOATZEL" "Floatzel"
  categorize "FLOETTE" "Floette"
  categorize "FLORGES" "Florges"
  categorize "FLYGON" "Flygon"
  categorize "FOONGUS" "Foongus"
  categorize "FORRETRESS" "Forretress"
  categorize "FROAKIE" "Froakie"
  categorize "FROGADIER" "Frogadier"
  categorize "FRAXURE" "Fraxure"
  categorize "FRILLISH" "Frillish"
  categorize "FROSLASS" "Froslass"
  categorize "FURFROU" "Furfrou"
  categorize "FURRET" "Furret"

  debug_end "Pokemon F scripts"

fi