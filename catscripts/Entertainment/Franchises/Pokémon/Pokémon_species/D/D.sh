#!/bin/bash 
#Pokemon species by name, starting with the letter D

KEYWORDS_DARKRAI="Darkrai"
KEYWORDS_DARMANITAN="Darmanitan"
KEYWORDS_DARUMAKA="Darumaka"
KEYWORDS_DEERLING="Deerling"
KEYWORDS_DEINO="Deino(|s)\b"
KEYWORDS_DELCATTY="Delcatty"
KEYWORDS_DELIBIRD="Delibird"
KEYWORDS_DEOXYS="Deoxys"
KEYWORDS_DEWGONG="Dewgong"
KEYWORDS_DEWOTT="Dewott"
KEYWORDS_DIALGA="Dialga|Diagla"
KEYWORDS_DIGLETT="Diglet(|t)"
KEYWORDS_DITTO="(find|catch|evolve|level|stats)(| )(Ditto|Dotto)|(Ditto|Dotto)(| )(find|catch|evolve|level|stats|at)|\ba(| )Ditto"
KEYWORDS_DODRIO="Dodrio"
KEYWORDS_DODUO="Doduo"
KEYWORDS_DONPHAN="Donphan"
KEYWORDS_DRAGONAIR="Dragonair"
KEYWORDS_DRAGONITE="Dragonite"
KEYWORDS_DRAGONITE_EXCLUDE="Monster(| )Hunter"
KEYWORDS_DRAPION="Drapion"
KEYWORDS_DRATINI="Dratini"
KEYWORDS_DRIFBLIM="Drifblim"
KEYWORDS_DRIFLOON="Drifloon"
KEYWORDS_DRILBUR="Drilbur"
KEYWORDS_DROWZEE="Drowzee"
KEYWORDS_DRUDDIGON="Druddigon"
KEYWORDS_DUCKLETT="Ducklett"
KEYWORDS_DUGTRIO="Dugtrio"
KEYWORDS_DUNSPARCE="Dunsparce"
KEYWORDS_DUOSION="Duosion"
KEYWORDS_DURANT="Durant"
KEYWORDS_DUSCLOPS="Dusclops"
KEYWORDS_DUSKNOIR="Dusknoir"
KEYWORDS_DUSKULL="Duskull"
KEYWORDS_DUSTOX="Dustox"
KEYWORDS_DWEBBLE="Dwebble"
KEYWORDS_POKEMONSPECIES_D="$KEYWORDS_DARKRAI|$KEYWORDS_DARMANITAN|$KEYWORDS_DARUMAKA|$KEYWORDS_DEERLING|$KEYWORDS_DEINO|$KEYWORDS_DELCATTY|$KEYWORDS_DELIBIRD|$KEYWORDS_DEOXYS|$KEYWORDS_DEWGONG|$KEYWORDS_DEWOTT|$KEYWORDS_DIALGA|$KEYWORDS_DIGLETT|$KEYWORDS_DITTO|$KEYWORDS_DODRIO|$KEYWORDS_DODUO|$KEYWORDS_DONPHAN|$KEYWORDS_DRAGONAIR|$KEYWORDS_DRAGONITE|$KEYWORDS_DRAPION|$KEYWORDS_DRATINI|$KEYWORDS_DRIFBLIM|$KEYWORDS_DRIFLOON|$KEYWORDS_DRIFLOON|$KEYWORDS_DRILBUR|$KEYWORDS_DROWZEE|$KEYWORDS_DRUDDIGON|$KEYWORDS_DUCKLETT|$KEYWORDS_DUGTRIO|$KEYWORDS_DUNSPARCE|$KEYWORDS_DUOSION|$KEYWORDS_DURANT|$KEYWORDS_DUSCLOPS|$KEYWORDS_DUSKNOIR|$KEYWORDS_DUSKULL|$KEYWORDS_DUSTOX|$KEYWORDS_DWEBBLE"

if [ "$1" == "" ];
then

  debug_start "Pokemon 'D' script"

  DARKRAI=$(egrep -i "$KEYWORDS_DARKRAI" "$NEWPAGES")
  DARMANITAN=$(egrep -i "$KEYWORDS_DARMANITAN" "$NEWPAGES")
  DARUMAKA=$(egrep -i "$KEYWORDS_DARUMAKA" "$NEWPAGES")
  DEERLING=$(egrep -i "$KEYWORDS_DEERLING" "$NEWPAGES")
  DEINO=$(egrep -i "$KEYWORDS_DEINO" "$NEWPAGES")
  DELCATTY=$(egrep -i "$KEYWORDS_DELCATTY" "$NEWPAGES")
  DELIBIRD=$(egrep -i "$KEYWORDS_DELIBIRD" "$NEWPAGES")
  DEOXYS=$(egrep -i "$KEYWORDS_DEOXYS" "$NEWPAGES")
  DEWGONG=$(egrep -i "$KEYWORDS_DEWGONG" "$NEWPAGES")
  DEWOTT=$(egrep -i "$KEYWORDS_DEWOTT" "$NEWPAGES")
  DIALGA=$(egrep -i "$KEYWORDS_DIALGA" "$NEWPAGES")
  DIGLETT=$(egrep -i "$KEYWORDS_DIGLETT" "$NEWPAGES")
  DITTO=$(egrep -i "$KEYWORDS_DITTO" "$NEWPAGES")
  DODRIO=$(egrep -i "$KEYWORDS_DODRIO" "$NEWPAGES")
  DODUO=$(egrep -i "$KEYWORDS_DODUO" "$NEWPAGES")
  DONPHAN=$(egrep -i "$KEYWORDS_DONPHAN" "$NEWPAGES")
  DRAGONAIR=$(egrep -i "$KEYWORDS_DRAGONAIR" "$NEWPAGES")
  DRAGONITE=$(egrep -i "$KEYWORDS_DRAGONITE" "$NEWPAGES" | egrep -iv "$KEYWORDS_DRAGONITE_EXCLUDE")
  DRAPION=$(egrep -i "$KEYWORDS_DRAPION" "$NEWPAGES")
  DRATINI=$(egrep -i "$KEYWORDS_DRATINI" "$NEWPAGES")
  DRIFBLIM=$(egrep -i "$KEYWORDS_DRIFBLIM" "$NEWPAGES")
  DRIFLOON=$(egrep -i "$KEYWORDS_DRIFLOON" "$NEWPAGES")
  DRILBUR=$(egrep -i "$KEYWORDS_DRILBUR" "$NEWPAGES")
  DROWZEE=$(egrep -i "$KEYWORDS_DROWZEE" "$NEWPAGES")
  DRUDDIGON=$(egrep -i "$KEYWORDS_DRUDDIGON" "$NEWPAGES")
  DUCKLETT=$(egrep -i "$KEYWORDS_DUCKLETT" "$NEWPAGES")
  DUGTRIO=$(egrep -i "$KEYWORDS_DUGTRIO" "$NEWPAGES")
  DUNSPARCE=$(egrep -i "$KEYWORDS_DUNSPARCE" "$NEWPAGES")
  DUOSION=$(egrep -i "$KEYWORDS_DUOSION" "$NEWPAGES")
  DURANT=$(egrep -i "$KEYWORDS_DURANT" "$NEWPAGES")
  DUSCLOPS=$(egrep -i "$KEYWORDS_DUSCLOPS" "$NEWPAGES")
  DUSKNOIR=$(egrep -i "$KEYWORDS_DUSKNOIR" "$NEWPAGES")
  DUSKULL=$(egrep -i "$KEYWORDS_DUSKULL" "$NEWPAGES")
  DUSTOX=$(egrep -i "$KEYWORDS_DUSTOX" "$NEWPAGES")
  DWEBBLE=$(egrep -i "$KEYWORDS_DWEBBLE" "$NEWPAGES")


  categorize "DARKRAI" "Darkrai"
  categorize "DARMANITAN" "Darmanitan"
  categorize "DARUMAKA" "Darumaka"
  categorize "DEERLING" "Deerling"
  categorize "DEINO" "Deino"
  categorize "DELCATTY" "Delcatty"
  categorize "DELIBIRD" "Delibird"
  categorize "DEOXYS" "Deoxys"
  categorize "DEWGONG" "Dewgong"
  categorize "DEWOTT" "Dewott"
  categorize "DIALGA" "Dialga"
  categorize "DIGLETT" "Diglett"
  categorize "DITTO" "Ditto (Pokémon)"
  categorize "DODRIO" "Dodrio"
  categorize "DODUO" "Doduo"
  categorize "DONPHAN" "Donphan"
  categorize "DRAGONAIR" "Dragonair"
  categorize "DRAGONITE" "Dragonite"
  categorize "DRAPION" "Drapion"
  categorize "DRATINI" "Dratini"
  categorize "DRIFBLIM" "Drifblim"
  categorize "DRIFLOON" "Drifloon"
  categorize "DRILBUR" "Drilbur"
  categorize "DROWZEE" "Drowzee"
  categorize "DRUDDIGON" "Druddigon"
  categorize "DUCKLETT" "Ducklett"
  categorize "DUGTRIO" "Dugtrio"
  categorize "DUNSPARCE" "Dunsparce"
  categorize "DUOSION" "Duosion"
  categorize "DURANT" "Durant"
  categorize "DUSCLOPS" "Dusclops"
  categorize "DUSKNOIR" "Dusknoir"
  categorize "DUSKULL" "Duskull"
  categorize "DUSTOX" "Dustox"
  categorize "DWEBBLE" "Dwebble"

  debug_end "Pokemon 'D' script"

fi