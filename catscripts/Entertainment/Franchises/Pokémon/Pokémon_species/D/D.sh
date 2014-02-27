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

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Pokemon D scripts\n"
  fi

  DARKRAI="$(egrep -i "$KEYWORDS_DARKRAI" newpages.txt)"
  DARMANITAN="$(egrep -i "$KEYWORDS_DARMANITAN" newpages.txt)"
  DARUMAKA="$(egrep -i "$KEYWORDS_DARUMAKA" newpages.txt)"
  DEERLING="$(egrep -i "$KEYWORDS_DEERLING" newpages.txt)"
  DEINO="$(egrep -i "$KEYWORDS_DEINO" newpages.txt)"
  DELCATTY="$(egrep -i "$KEYWORDS_DELCATTY" newpages.txt)"
  DELIBIRD="$(egrep -i "$KEYWORDS_DELIBIRD" newpages.txt)"
  DEOXYS="$(egrep -i "$KEYWORDS_DEOXYS" newpages.txt)"
  DEWGONG="$(egrep -i "$KEYWORDS_DEWGONG" newpages.txt)"
  DEWOTT="$(egrep -i "$KEYWORDS_DEWOTT" newpages.txt)"
  DIALGA="$(egrep -i "$KEYWORDS_DIALGA" newpages.txt)"
  DIGLETT="$(egrep -i "$KEYWORDS_DIGLETT" newpages.txt)"
  DITTO="$(egrep -i "$KEYWORDS_DITTO" newpages.txt)"
  DODRIO="$(egrep -i "$KEYWORDS_DODRIO" newpages.txt)"
  DODUO="$(egrep -i "$KEYWORDS_DODUO" newpages.txt)"
  DONPHAN="$(egrep -i "$KEYWORDS_DONPHAN" newpages.txt)"
  DRAGONAIR="$(egrep -i "$KEYWORDS_DRAGONAIR" newpages.txt)"
  DRAGONITE="$(egrep -i "$KEYWORDS_DRAGONITE" newpages.txt | egrep -iv "$KEYWORDS_DRAGONITE_EXCLUDE")"
  DRAPION="$(egrep -i "$KEYWORDS_DRAPION" newpages.txt)"
  DRATINI="$(egrep -i "$KEYWORDS_DRATINI" newpages.txt)"
  DRIFBLIM="$(egrep -i "$KEYWORDS_DRIFBLIM" newpages.txt)"
  DRIFLOON="$(egrep -i "$KEYWORDS_DRIFLOON" newpages.txt)"
  DRILBUR="$(egrep -i "$KEYWORDS_DRILBUR" newpages.txt)"
  DROWZEE="$(egrep -i "$KEYWORDS_DROWZEE" newpages.txt)"
  DRUDDIGON="$(egrep -i "$KEYWORDS_DRUDDIGON" newpages.txt)"
  DUCKLETT="$(egrep -i "$KEYWORDS_DUCKLETT" newpages.txt)"
  DUGTRIO="$(egrep -i "$KEYWORDS_DUGTRIO" newpages.txt)"
  DUNSPARCE="$(egrep -i "$KEYWORDS_DUNSPARCE" newpages.txt)"
  DUOSION="$(egrep -i "$KEYWORDS_DUOSION" newpages.txt)"
  DURANT="$(egrep -i "$KEYWORDS_DURANT" newpages.txt)"
  DUSCLOPS="$(egrep -i "$KEYWORDS_DUSCLOPS" newpages.txt)"
  DUSKNOIR="$(egrep -i "$KEYWORDS_DUSKNOIR" newpages.txt)"
  DUSKULL="$(egrep -i "$KEYWORDS_DUSKULL" newpages.txt)"
  DUSTOX="$(egrep -i "$KEYWORDS_DUSTOX" newpages.txt)"
  DWEBBLE="$(egrep -i "$KEYWORDS_DWEBBLE" newpages.txt)"


  if [ "$DARKRAI" != "" ];
  then
    printf "%s" "$DARKRAI" > Darkrai.txt
    export CATFILE="Darkrai.txt"
    export CATNAME="Darkrai"
    $CATEGORIZE
    rm Darkrai.txt
    unset DARKRAI
  fi

  if [ "$DARMANITAN" != "" ];
  then
    printf "%s" "$DARMANITAN" > Darmanitan.txt
    export CATFILE="Darmanitan.txt"
    export CATNAME="Darmanitan"
    $CATEGORIZE
    rm Darmanitan.txt
    unset DARMANITAN
  fi

  if [ "$DARUMAKA" != "" ];
  then
    printf "%s" "$DARUMAKA" > Darumaka.txt
    export CATFILE="Darumaka.txt"
    export CATNAME="Darumaka"
    $CATEGORIZE
    rm Darumaka.txt
    unset DARUMAKA
  fi

  if [ "$DEERLING" != "" ];
  then
    printf "%s" "$DEERLING" > Deerling.txt
    export CATFILE="Deerling.txt"
    export CATNAME="Deerling"
    $CATEGORIZE
    rm Deerling.txt
    unset DEERLING
  fi

  if [ "$DEINO" != "" ];
  then
    printf "%s" "$DEINO" > Deino.txt
    export CATFILE="Deino.txt"
    export CATNAME="Deino"
    $CATEGORIZE
    rm Deino.txt
    unset DEINO
  fi

  if [ "$DELCATTY" != "" ];
  then
    printf "%s" "$DELCATTY" > Delcatty.txt
    export CATFILE="Delcatty.txt"
    export CATNAME="Delcatty"
    $CATEGORIZE
    rm Delcatty.txt
    unset DELCATTY
  fi

  if [ "$DELIBIRD" != "" ];
  then
    printf "%s" "$DELIBIRD" > Delibird.txt
    export CATFILE="Delibird.txt"
    export CATNAME="Delibird"
    $CATEGORIZE
    rm Delibird.txt
    unset DELIBIRD
  fi

  if [ "$DEOXYS" != "" ];
  then
    printf "%s" "$DEOXYS" > Deoxys.txt
    export CATFILE="Deoxys.txt"
    export CATNAME="Deoxys"
    $CATEGORIZE
    rm Deoxys.txt
    unset DEOXYS
  fi

  if [ "$DEWGONG" != "" ];
  then
    printf "%s" "$DEWGONG" > Dewgong.txt
    export CATFILE="Dewgong.txt"
    export CATNAME="Dewgong"
    $CATEGORIZE
    rm Dewgong.txt
    unset DEWGONG
  fi

  if [ "$DEWOTT" != "" ];
  then
    printf "%s" "$DEWOTT" > Dewott.txt
    export CATFILE="Dewott.txt"
    export CATNAME="Dewott"
    $CATEGORIZE
    rm Dewott.txt
    unset DEWOTT
  fi

  if [ "$DIALGA" != "" ];
  then
    printf "%s" "$DIALGA" > Dialga.txt
    export CATFILE="Dialga.txt"
    export CATNAME="Dialga"
    $CATEGORIZE
    rm Dialga.txt
    unset DIALGA
  fi

  if [ "$DIGLETT" != "" ];
  then
    printf "%s" "$DIGLETT" > Diglett.txt
    export CATFILE="Diglett.txt"
    export CATNAME="Diglett"
    $CATEGORIZE
    rm Diglett.txt
    unset DIGLETT
  fi

  if [ "$DITTO" != "" ];
  then
    printf "%s" "$DITTO" > Ditto.txt
    export CATFILE="Ditto.txt"
    export CATNAME="Ditto (Pokémon)"
    $CATEGORIZE
    rm Ditto.txt
    unset DITTO
  fi

  if [ "$DODRIO" != "" ];
  then
    printf "%s" "$DODRIO" > Dodrio.txt
    export CATFILE="Dodrio.txt"
    export CATNAME="Dodrio"
    $CATEGORIZE
    rm Dodrio.txt
    unset DODRIO
  fi

  if [ "$DODUO" != "" ];
  then
    printf "%s" "$DODUO" > Doduo.txt
    export CATFILE="Doduo.txt"
    export CATNAME="Doduo"
    $CATEGORIZE
    rm Doduo.txt
    unset DODUO
  fi

  if [ "$DONPHAN" != "" ];
  then
    printf "%s" "$DONPHAN" > Donphan.txt
    export CATFILE="Donphan.txt"
    export CATNAME="Donphan"
    $CATEGORIZE
    rm Donphan.txt
    unset DONPHAN
  fi

  if [ "$DRAGONAIR" != "" ];
  then
    printf "%s" "$DRAGONAIR" > Dragonair.txt
    export CATFILE="Dragonair.txt"
    export CATNAME="Dragonair"
    $CATEGORIZE
    rm Dragonair.txt
    unset DRAGONAIR
  fi

  if [ "$DRAGONITE" != "" ];
  then
    printf "%s" "$DRAGONITE" > Dragonite.txt
    export CATFILE="Dragonite.txt"
    export CATNAME="Dragonite"
    $CATEGORIZE
    rm Dragonite.txt
    unset DRAGONITE
  fi

  if [ "$DRAPION" != "" ];
  then
    printf "%s" "$DRAPION" > Drapion.txt
    export CATFILE="Drapion.txt"
    export CATNAME="Drapion"
    $CATEGORIZE
    rm Drapion.txt
    unset DRAPION
  fi

  if [ "$DRATINI" != "" ];
  then
    printf "%s" "$DRATINI" > Dratini.txt
    export CATFILE="Dratini.txt"
    export CATNAME="Dratini"
    $CATEGORIZE
    rm Dratini.txt
    unset DRATINI
  fi

  if [ "$DRIFBLIM" != "" ];
  then
    printf "%s" "$DRIFBLIM" > Drifblim.txt
    export CATFILE="Drifblim.txt"
    export CATNAME="Drifblim"
    $CATEGORIZE
    rm Drifblim.txt
    unset DRIFBLIM
  fi

  if [ "$DRIFLOON" != "" ];
  then
    printf "%s" "$DRIFLOON" > Drifloon.txt
    export CATFILE="Drifloon.txt"
    export CATNAME="Drifloon"
    $CATEGORIZE
    rm Drifloon.txt
    unset DRIFLOON
  fi

  if [ "$DRILBUR" != "" ];
  then
    printf "%s" "$DRILBUR" > Drilbur.txt
    export CATFILE="Drilbur.txt"
    export CATNAME="Drilbur"
    $CATEGORIZE
    rm Drilbur.txt
    unset DRILBUR
  fi

  if [ "$DROWZEE" != "" ];
  then
    printf "%s" "$DROWZEE" > Drowzee.txt
    export CATFILE="Drowzee.txt"
    export CATNAME="Drowzee"
    $CATEGORIZE
    rm Drowzee.txt
    unset DROWZEE
  fi

  if [ "$DRUDDIGON" != "" ];
  then
    printf "%s" "$DRUDDIGON" > Druddigon.txt
    export CATFILE="Druddigon.txt"
    export CATNAME="Druddigon"
    $CATEGORIZE
    rm Druddigon.txt
    unset DRUDDIGON
  fi

  if [ "$DUCKLETT" != "" ];
  then
    printf "%s" "$DUCKLETT" > Ducklett.txt 
    export CATFILE="Ducklett.txt"
    export CATNAME="Ducklett"
    $CATEGORIZE
    rm Ducklett.txt
    unset DUCKLETT
  fi

  if [ "$DUGTRIO" != "" ];
  then
    printf "%s" "$DUGTRIO" > Dugtrio.txt
    export CATFILE="Dugtrio.txt"
    export CATNAME="Dugtrio"
    $CATEGORIZE
    rm Dugtrio.txt
    unset DUGTRIO
  fi

  if [ "$DUNSPARCE" != "" ];
  then
    printf "%s" "$DUNSPARCE" > Dunsparce.txt
    export CATFILE="Dunsparce.txt"
    export CATNAME="Dunsparce"
    $CATEGORIZE
    rm Dunsparce.txt
    unset DUNSPARCE
  fi

  if [ "$DUOSION" != "" ];
  then
    printf "%s" "$DUOSION" > Duosion.txt
    export CATFILE="Duosion.txt"
    export CATNAME="Duosion"
    $CATEGORIZE
    rm Duosion.txt
    unset DUOSION
  fi

  if [ "$DURANT" != "" ];
  then
    printf "%s" "$DURANT" > Durant.txt
    export CATFILE="Durant.txt"
    export CATNAME="Durant"
    $CATEGORIZE
    rm Durant.txt
    unset DURANT
  fi

  if [ "$DUSCLOPS" != "" ];
  then
    printf "%s" "$DUSCLOPS" > Dusclops.txt
    export CATFILE="Dusclops.txt"
    export CATNAME="Dusclops"
    $CATEGORIZE
    rm Dusclops.txt
    unset DUSCLOPS
  fi

  if [ "$DUSKNOIR" != "" ];
  then
    printf "%s" "$DUSKNOIR" > Dusknoir.txt
    export CATFILE="Dusknoir.txt"
    export CATNAME="Dusknoir"
    $CATEGORIZE
    rm Dusknoir.txt
    unset DUSKNOIR
  fi

  if [ "$DUSKULL" != "" ];
  then
    printf "%s" "$DUSKULL" > Duskull.txt
    export CATFILE="Duskull.txt"
    export CATNAME="Duskull"
    $CATEGORIZE
    rm Duskull.txt
    unset DUSKULL
  fi

  if [ "$DUSTOX" != "" ];
  then
    printf "%s" "$DUSTOX" > Dustox.txt
    export CATFILE="Dustox.txt"
    export CATNAME="Dustox"
    $CATEGORIZE
    rm Dustox.txt
    unset DUSTOX
  fi

  if [ "$DWEBBLE" != "" ];
  then
    printf "%s" "$DWEBBLE" > Dwebble.txt
    export CATFILE="Dwebble.txt"
    export CATNAME="Dwebble"
    $CATEGORIZE
    rm Dwebble.txt
    unset DWEBBLE
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Pokemon D scripts\n"
  fi

fi