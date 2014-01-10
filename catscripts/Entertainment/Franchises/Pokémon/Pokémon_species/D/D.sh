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
KEYWORDS_DITTO="(find|catch|evolve|level|stats) (Ditto|Dotto)|(Ditto|Dotto) (find|catch|evolve|level|stats|at)"
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
  egrep -i "$KEYWORDS_DARKRAI" newpages.txt >> Darkrai.txt &
  egrep -i "$KEYWORDS_DARMANITAN" newpages.txt >> Darmanitan.txt &
  egrep -i "$KEYWORDS_DARUMAKA" newpages.txt >> Darumaka.txt &
  egrep -i "$KEYWORDS_DEERLING" newpages.txt >> Deerling.txt &
  egrep -i "$KEYWORDS_DEINO" newpages.txt >> Deino.txt &
  egrep -i "$KEYWORDS_DELCATTY" newpages.txt >> Delcatty.txt &
  egrep -i "$KEYWORDS_DELIBIRD" newpages.txt >> Delibird.txt &
  egrep -i "$KEYWORDS_DEOXYS" newpages.txt >> Deoxys.txt &
  egrep -i "$KEYWORDS_DEWGONG" newpages.txt >> Dewgong.txt &
  egrep -i "$KEYWORDS_DEWOTT" newpages.txt >> Dewott.txt &
  egrep -i "$KEYWORDS_DIALGA" newpages.txt >> Dialga.txt &
  egrep -i "$KEYWORDS_DIGLETT" newpages.txt >> Diglett.txt &
  egrep -i "$KEYWORDS_DITTO" newpages.txt >> Ditto.txt &
  egrep -i "$KEYWORDS_DODRIO" newpages.txt >> Dodrio.txt &
  egrep -i "$KEYWORDS_DODUO" newpages.txt >> Doduo.txt &
  egrep -i "$KEYWORDS_DONPHAN" newpages.txt >> Donphan.txt &
  egrep -i "$KEYWORDS_DRAGONAIR" newpages.txt >> Dragonair.txt &
  egrep -i "$KEYWORDS_DRAGONITE" newpages.txt | egrep -iv "$KEYWORDS_DRAGONITE_EXCLUDE" >> Dragonite.txt &
  egrep -i "$KEYWORDS_DRAPION" newpages.txt >> Drapion.txt &
  egrep -i "$KEYWORDS_DRATINI" newpages.txt >> Dratini.txt &
  egrep -i "$KEYWORDS_DRIFBLIM" newpages.txt >> Drifblim.txt &
  egrep -i "$KEYWORDS_DRIFLOON" newpages.txt >> Drifloon.txt &
  egrep -i "$KEYWORDS_DRILBUR" newpages.txt >> Drilbur.txt &
  egrep -i "$KEYWORDS_DROWZEE" newpages.txt >> Drowzee.txt &
  egrep -i "$KEYWORDS_DRUDDIGON" newpages.txt >> Druddigon.txt &
  egrep -i "$KEYWORDS_DUCKLETT" newpages.txt >> Ducklett.txt &
  egrep -i "$KEYWORDS_DUGTRIO" newpages.txt >> Dugtrio.txt &
  egrep -i "$KEYWORDS_DUNSPARCE" newpages.txt >> Dunsparce.txt &
  egrep -i "$KEYWORDS_DUOSION" newpages.txt >> Duosion.txt &
  egrep -i "$KEYWORDS_DURANT" newpages.txt >> Durant.txt &
  egrep -i "$KEYWORDS_DUSCLOPS" newpages.txt >> Dusclops.txt &
  egrep -i "$KEYWORDS_DUSKNOIR" newpages.txt >> Dusknoir.txt &
  egrep -i "$KEYWORDS_DUSKULL" newpages.txt >> Duskull.txt &
  egrep -i "$KEYWORDS_DUSTOX" newpages.txt >> Dustox.txt &
  egrep -i "$KEYWORDS_DWEBBLE" newpages.txt >> Dwebble.txt &

  wait

  Darkrai=`stat --print=%s Darkrai.txt`
  Darmanitan=`stat --print=%s Darmanitan.txt`
  Darumaka=`stat --print=%s Darumaka.txt`
  Deerling=`stat --print=%s Deerling.txt`
  Deino=`stat --print=%s Deino.txt`
  Delcatty=`stat --print=%s Delcatty.txt`
  Delibird=`stat --print=%s Delibird.txt`
  Deoxys=`stat --print=%s Deoxys.txt`
  Dewgong=`stat --print=%s Dewgong.txt`
  Dewott=`stat --print=%s Dewott.txt`
  Dialga=`stat --print=%s Dialga.txt`
  Diglett=`stat --print=%s Diglett.txt`
  Ditto=`stat --print=%s Ditto.txt`
  Dodrio=`stat --print=%s Dodrio.txt`
  Doduo=`stat --print=%s Doduo.txt`
  Donphan=`stat --print=%s Donphan.txt`
  Dragonair=`stat --print=%s Dragonair.txt`
  Dragonite=`stat --print=%s Dragonite.txt`
  Drapion=`stat --print=%s Drapion.txt`
  Dratini=`stat --print=%s Dratini.txt`
  Drifblim=`stat --print=%s Drifblim.txt`
  Drifloon=`stat --print=%s Drifloon.txt`
  Drilbur=`stat --print=%s Drilbur.txt`
  Drowzee=`stat --print=%s Drowzee.txt`
  Druddigon=`stat --print=%s Druddigon.txt`
  Ducklett=`stat --print=%s Ducklett.txt`
  Dugtrio=`stat --print=%s Dugtrio.txt`
  Dunsparce=`stat --print=%s Dunsparce.txt`
  Duosion=`stat --print=%s Duosion.txt`
  Durant=`stat --print=%s Durant.txt`
  Dusclops=`stat --print=%s Dusclops.txt`
  Dusknoir=`stat --print=%s Dusknoir.txt`
  Duskull=`stat --print=%s Duskull.txt`
  Dustox=`stat --print=%s Dustox.txt`
  Dwebble=`stat --print=%s Dwebble.txt`


  if [ $Darkrai -ne 0 ];
  then
    export CATFILE="Darkrai.txt"
    export CATNAME=""
    $CATEGORIZE
  fi

  if [ $Darmanitan -ne 0 ];
  then
    export CATFILE="Darmanitan.txt"
    export CATNAME="Darmanitan"
    $CATEGORIZE
  fi

  if [ $Darumaka -ne 0 ];
  then
    export CATFILE="Darumaka.txt"
    export CATNAME="Darumaka"
    $CATEGORIZE
  fi

  if [ $Deerling -ne 0 ];
  then
    export CATFILE="Deerling.txt"
    export CATNAME="Deerling"
    $CATEGORIZE
  fi

  if [ $Deino -ne 0 ];
  then
    export CATFILE="Deino.txt"
    export CATNAME="Deino"
    $CATEGORIZE
  fi

  if [ $Delcatty -ne 0 ];
  then
    export CATFILE="Delcatty.txt"
    export CATNAME="Delcatty"
    $CATEGORIZE
  fi

  if [ $Delibird -ne 0 ];
  then
    export CATFILE="Delibird.txt"
    export CATNAME="Delibird"
    $CATEGORIZE
  fi

  if [ $Deoxys -ne 0 ];
  then
    export CATFILE="Deoxys.txt"
    export CATNAME="Deoxys"
    $CATEGORIZE
  fi

  if [ $Dewgong -ne 0 ];
  then
    export CATFILE="Dewgong.txt"
    export CATNAME="Dewgong"
    $CATEGORIZE
  fi

  if [ $Dewott -ne 0 ];
  then
    export CATFILE="Dewott.txt"
    export CATNAME="Dewott"
    $CATEGORIZE
  fi

  if [ $Dialga -ne 0 ];
  then
    export CATFILE="Dialga.txt"
    export CATNAME="Dialga"
    $CATEGORIZE
  fi

  if [ $Diglett -ne 0 ];
  then
    export CATFILE="Diglett.txt"
    export CATNAME="Diglett"
    $CATEGORIZE
  fi

  if [ $Ditto -ne 0 ];
  then
    export CATFILE="Ditto.txt"
    export CATNAME="Ditto (Pokémon)"
    $CATEGORIZE
  fi

  if [ $Dodrio -ne 0 ];
  then
    export CATFILE="Dodrio.txt"
    export CATNAME="Dodrio"
    $CATEGORIZE
  fi

  if [ $Doduo -ne 0 ];
  then
    export CATFILE="Doduo.txt"
    export CATNAME="Doduo"
    $CATEGORIZE
  fi

  if [ $Donphan -ne 0 ];
  then
    export CATFILE="Donphan.txt"
    export CATNAME="Donphan"
    $CATEGORIZE
  fi

  if [ $Dragonair -ne 0 ];
  then
    export CATFILE="Dragonair.txt"
    export CATNAME="Dragonair"
    $CATEGORIZE
  fi

  if [ $Dragonite -ne 0 ];
  then
    export CATFILE="Dragonite.txt"
    export CATNAME="Dragonite"
    $CATEGORIZE
  fi

  if [ $Drapion -ne 0 ];
  then
    export CATFILE="Drapion.txt"
    export CATNAME="Drapion"
    $CATEGORIZE
  fi

  if [ $Dratini -ne 0 ];
  then
    export CATFILE="Dratini.txt"
    export CATNAME="Dratini"
    $CATEGORIZE
  fi

  if [ $Drifblim -ne 0 ];
  then
    export CATFILE="Drifblim.txt"
    export CATNAME="Drifblim"
    $CATEGORIZE
  fi

  if [ $Drifloon -ne 0 ];
  then
    export CATFILE="Drifloon.txt"
    export CATNAME="Drifloon"
    $CATEGORIZE
  fi

  if [ $Drilbur -ne 0 ];
  then
    export CATFILE="Drilbur.txt"
    export CATNAME="Drilbur"
    $CATEGORIZE
  fi

  if [ $Drowzee -ne 0 ];
  then
    export CATFILE="Drowzee.txt"
    export CATNAME="Drowzee"
    $CATEGORIZE
  fi

  if [ $Druddigon -ne 0 ];
  then
    export CATFILE="Druddigon.txt"
    export CATNAME="Druddigon"
    $CATEGORIZE
  fi

  if [ $Ducklett -ne 0 ];
  then
    export CATFILE="Ducklett.txt"
    export CATNAME="Ducklett"
    $CATEGORIZE
  fi

  if [ $Dugtrio -ne 0 ];
  then
    export CATFILE="Dugtrio.txt"
    export CATNAME="Dugtrio"
    $CATEGORIZE
  fi

  if [ $Dunsparce -ne 0 ];
  then
    export CATFILE="Dunsparce.txt"
    export CATNAME="Dunsparce"
    $CATEGORIZE
  fi

  if [ $Duosion -ne 0 ];
  then
    export CATFILE="Duosion.txt"
    export CATNAME="Duosion"
    $CATEGORIZE
  fi

  if [ $Durant -ne 0 ];
  then
    export CATFILE="Durant.txt"
    export CATNAME="Durant"
    $CATEGORIZE
  fi

  if [ $Dusclops -ne 0 ];
  then
    export CATFILE="Dusclops.txt"
    export CATNAME="Dusclops"
    $CATEGORIZE
  fi

  if [ $Dusknoir -ne 0 ];
  then
    export CATFILE="Dusknoir.txt"
    export CATNAME="Dusknoir"
    $CATEGORIZE
  fi

  if [ $Duskull -ne 0 ];
  then
    export CATFILE="Duskull.txt"
    export CATNAME="Duskull"
    $CATEGORIZE
  fi

  if [ $Dustox -ne 0 ];
  then
    export CATFILE="Dustox.txt"
    export CATNAME="Dustox"
    $CATEGORIZE
  fi

  if [ $Dwebble -ne 0 ];
  then
    export CATFILE="Dwebble.txt"
    export CATNAME="Dwebble"
    $CATEGORIZE
  fi

  rm Darkrai.txt &
  rm Darmanitan.txt &
  rm Darumaka.txt &
  rm Deerling.txt &
  rm Deino.txt &
  rm Delcatty.txt &
  rm Delibird.txt &
  rm Deoxys.txt &
  rm Dewgong.txt &
  rm Dewott.txt &
  rm Dialga.txt &
  rm Diglett.txt &
  rm Ditto.txt &
  rm Dodrio.txt &
  rm Doduo.txt &
  rm Donphan.txt &
  rm Dragonair.txt &
  rm Dragonite.txt &
  rm Drapion.txt &
  rm Dratini.txt &
  rm Drifblim.txt &
  rm Drifloon.txt &
  rm Drilbur.txt &
  rm Drowzee.txt &
  rm Druddigon.txt &
  rm Ducklett.txt &
  rm Dugtrio.txt &
  rm Dunsparce.txt &
  rm Duosion.txt &
  rm Durant.txt &
  rm Dusclops.txt &
  rm Dusknoir.txt &
  rm Duskull.txt &
  rm Dustox.txt &
  rm Dwebble.txt &

  wait

fi