#!/bin/bash

KEYWORDS_PACHIRISU="Pachirisu"
KEYWORDS_PALKIA="Palkia"
KEYWORDS_PALPITOAD="Palpitoad"
KEYWORDS_PANPOUR="Panpour"
KEYWORDS_PANSAGE="Pansage"
KEYWORDS_PANSEAR="Pansear"
KEYWORDS_PARAS="Paras\b"
KEYWORDS_PARASECT="Parasect"
KEYWORDS_PATRAT="Patrat"
KEYWORDS_PAWNIARD="Pawniard"
KEYWORDS_PELIPPER="Pelipper"
KEYWORDS_PERSIAN="Persian\b"
KEYWORDS_PERSIAN_EXCLUDE="empire|language|speak|cat|kitten|gulf|language|religion|in(| )Persian$|capital|leader|war|Persian(| )ruler"
KEYWORDS_PETILIL="Petilil"
KEYWORDS_PHANPY="Phanpy"
KEYWORDS_PHIONE="Phione"
KEYWORDS_PICHU="Pichu"
KEYWORDS_PIDOVE="P(e|i)dove"
KEYWORDS_PIDGEOT="Pidgeot\b"
KEYWORDS_PIDGEOTTO="Pidgeot(|t)o"
KEYWORDS_PIDGEY="Pidgey"
KEYWORDS_PIGNITE="Pignite"
KEYWORDS_PIKACHU="Pikachu"
KEYWORDS_PILOSWINE="Piloswine"
KEYWORDS_PINECO="Pineco\b"
KEYWORDS_PINSIR="Pinsir"
KEYWORDS_PIPLUP="Piplup"
KEYWORDS_PLUSLE="Plusle"
KEYWORDS_POLITOED="Politoed"
KEYWORDS_POLIWAG="Poliwag"
KEYWORDS_POLIWHIRL="Poliwhirl"
KEYWORDS_POLIWRATH="Poliwrath"
KEYWORDS_PONYTA="Ponyta\b"
KEYWORDS_POOCHYENA="Poochyena"
KEYWORDS_PORYGON="Porygon"
KEYWORDS_PORYGONZ="Porygon-Z"
KEYWORDS_PORYGON2="Porygon2"
KEYWORDS_PRIMEAPE="Primeape"
KEYWORDS_PRINPLUP="Prinplup"
KEYWORDS_PROBOPASS="Probopass"
KEYWORDS_PSYDUCK="Psyduck"
KEYWORDS_PUPITAR="Pupitar"
KEYWORDS_PURRLOIN="Purrloin"
KEYWORDS_PURUGLY="Purugly"

if [ "$1" == "" ];
then

  debug_start "Pokemon 'P' scripts"

  PACHIRISU="$(egrep -i "$KEYWORDS_PACHIRISU" "$NEWPAGES")"
  PALKIA="$(egrep -i "$KEYWORDS_PALKIA" "$NEWPAGES")"
  PALPITOAD="$(egrep -i "$KEYWORDS_PALPITOAD" "$NEWPAGES")"
  PANPOUR="$(egrep -i "$KEYWORDS_PANPOUR" "$NEWPAGES")"
  PANSAGE="$(egrep -i "$KEYWORDS_PANSAGE" "$NEWPAGES")"
  PANSEAR="$(egrep -i "$KEYWORDS_PANSEAR" "$NEWPAGES")"
  PARAS="$(egrep -i "$KEYWORDS_PARAS" "$NEWPAGES")"
  PARASECT="$(egrep -i "$KEYWORDS_PARASECT" "$NEWPAGES")"
  PATRAT="$(egrep -i "$KEYWORDS_PATRAT" "$NEWPAGES")"
  PAWNIARD="$(egrep -i "$KEYWORDS_PAWNIARD" "$NEWPAGES")"
  PELIPPER="$(egrep -i "$KEYWORDS_PELIPPER" "$NEWPAGES")"
  PERSIAN="$(egrep -i "$KEYWORDS_PERSIAN" "$NEWPAGES" | egrep -iv "$KEYWORDS_PERSIAN_EXCLUDE")"
  PETILIL="$(egrep -i "$KEYWORDS_PETILIL" "$NEWPAGES")"
  PHANPY="$(egrep -i "$KEYWORDS_PHANPY" "$NEWPAGES")"
  PHIONE="$(egrep -i "$KEYWORDS_PHIONE" "$NEWPAGES")"
  PICHU="$(egrep -i "$KEYWORDS_PICHU" "$NEWPAGES")"
  PIDGEOT="$(egrep -i "$KEYWORDS_PIDGEOT" "$NEWPAGES")"
  PIDGEOTTO="$(egrep -i "$KEYWORDS_PIDGEOTTO" "$NEWPAGES")"
  PIDGEY="$(egrep -i "$KEYWORDS_PIDGEY" "$NEWPAGES")"
  PIDOVE="$(egrep -i "$KEYWORDS_PIDOVE" "$NEWPAGES")"
  PIGNITE="$(egrep -i "$KEYWORDS_PIGNITE" "$NEWPAGES")"
  PIKACHU="$(egrep -i "$KEYWORDS_PIKACHU" "$NEWPAGES")"
  PILOSWINE="$(egrep -i "$KEYWORDS_PILOSWINE" "$NEWPAGES")"
  PINECO="$(egrep -i "$KEYWORDS_PINECO" "$NEWPAGES")"
  PINSIR="$(egrep -i "$KEYWORDS_PINSIR" "$NEWPAGES")"
  PIPLUP="$(egrep -i "$KEYWORDS_PIPLUP" "$NEWPAGES")"
  PLUSLE="$(egrep -i "$KEYWORDS_PLUSLE" "$NEWPAGES")"
  POLITOED="$(egrep -i "$KEYWORDS_POLITOED" "$NEWPAGES")"
  POLIWAG="$(egrep -i "$KEYWORDS_POLIWAG" "$NEWPAGES")"
  POLIWHIRL="$(egrep -i "$KEYWORDS_POLIWHIRL" "$NEWPAGES")"
  POLIWRATH="$(egrep -i "$KEYWORDS_POLIWRATH" "$NEWPAGES")"
  PONYTA="$(egrep -i "$KEYWORDS_PONYTA" "$NEWPAGES")"
  POOCHYENA="$(egrep -i "$KEYWORDS_POOCHYENA" "$NEWPAGES")"
  PORYGON="$(egrep -i "$KEYWORDS_PORYGON" "$NEWPAGES")"
  PORYGONZ="$(egrep -i "$KEYWORDS_PORYGONZ" "$NEWPAGES")"
  PORYGON2="$(egrep -i "$KEYWORDS_PORYGON2" "$NEWPAGES")"
  PRIMEAPE="$(egrep -i "$KEYWORDS_PRIMEAPE" "$NEWPAGES")"
  PRINPLUP="$(egrep -i "$KEYWORDS_PRINPLUP" "$NEWPAGES")"
  PROBOPASS="$(egrep -i "$KEYWORDS_PROBOPASS" "$NEWPAGES")"
  PSYDUCK="$(egrep -i "$KEYWORDS_PSYDUCK" "$NEWPAGES")"
  PUPITAR="$(egrep -i "$KEYWORDS_PUPITAR" "$NEWPAGES")"
  PURRLOIN="$(egrep -i "$KEYWORDS_PURRLOIN" "$NEWPAGES")"
  PURUGLY="$(egrep -i "$KEYWORDS_PURUGLY" "$NEWPAGES")"

  if [ "$PACHIRISU" != "" ];
  then
    printf "%s" "$PACHIRISU" > Pachirisu.txt
    export CATFILE="Pachirisu.txt"
    export CATNAME="Pachirisu"
    $CATEGORIZE
    rm Pachirisu.txt
    unset PACHIRISU
  fi

  if [ "$PALKIA" != "" ];
  then
    printf "%s" "$PALKIA" > Palkia.txt
    export CATFILE="Palkia.txt"
    export CATNAME="Palkia"
    $CATEGORIZE
    rm Palkia.txt
    unset PALKIA
  fi

  if [ "$PALPITOAD" != "" ];
  then
    printf "%s" "$PALPITOAD" > Palpitoad.txt
    export CATFILE="Palpitoad.txt"
    export CATNAME="Palpitoad"
    $CATEGORIZE
    rm Palpitoad.txt
    unset PALPITOAD
  fi

  if [ "$PANPOUR" != "" ];
  then
    printf "%s" "$PANPOUR" > Panpour.txt
    export CATFILE="Panpour.txt"
    export CATNAME="Panpour"
    $CATEGORIZE
    rm Panpour.txt
    unset PANPOUR
  fi

  if [ "$PANSAGE" != "" ];
  then
    printf "%s" "$PANSAGE" > Pansage.txt
    export CATFILE="Pansage.txt"
    export CATNAME="Pansage"
    $CATEGORIZE
    rm Pansage.txt
    unset PANSAGE
  fi

  if [ "$PANSEAR" != "" ];
  then
    printf "%s" "$PANSEAR" > Pansear.txt
    export CATFILE="Pansear.txt"
    export CATNAME="Pansear"
    $CATEGORIZE
    rm Pansear.txt
    unset PANSEAR
  fi

  if [ "$PARAS" != "" ];
  then
    printf "%s" "$PARAS" > Paras.txt
    export CATFILE="Paras.txt"
    export CATNAME="Paras"
    $CATEGORIZE
    rm Paras.txt
    unset PARAS
  fi
  
  if [ "$PARASECT" != "" ];
  then
    printf "%s" "$PARASECT" > Parasect.txt
    export CATFILE="Parasect.txt"
    export CATNAME="Parasect"
    $CATEGORIZE
    rm Parasect.txt
    unset PARASECT
  fi

  if [ "$PATRAT" != "" ];
  then
    printf "%s" "$PATRAT" > Patrat.txt
    export CATFILE="Patrat.txt"
    export CATNAME="Patrat"
    $CATEGORIZE
    rm Patrat.txt
    unset PATRAT
  fi

  if [ "$PAWNIARD" != "" ];
  then
    printf "%s" "$PAWNIARD" > Pawniard.txt
    export CATFILE="Pawniard.txt"
    export CATNAME="Pawniard"
    $CATEGORIZE
    rm Pawniard.txt
    unset PAWNIARD
  fi

  if [ "$PELIPPER" != "" ];
  then
    printf "%s" "$PELIPPER" > Pelipper.txt
    export CATFILE="Pelipper.txt"
    export CATNAME="Pelipper"
    $CATEGORIZE
    rm Pelipper.txt
    unset PELIPPER
  fi

  if [ "$PERSIAN" != "" ];
  then
    printf "%s" "$PERSIAN" > Persian.txt
    export CATFILE="Persian.txt"
    export CATNAME="Persian"
    $CATEGORIZE
    rm Persian.txt
    unset PERSIAN
  fi

  if [ "$PETILIL" != "" ];
  then
    printf "%s" "$PETILIL" > Petilil.txt
    export CATFILE="Petilil.txt"
    export CATNAME="Petilil"
    $CATEGORIZE
    rm Petilil.txt
    unset PETILIL
  fi

  if [ "$PHANPY" != "" ];
  then
    printf "%s" "$PHANPY" > Phanpy.txt
    export CATFILE="Phanpy.txt"
    export CATNAME="Phanpy"
    $CATEGORIZE
    rm Phanpy.txt
    unset PHANPY
  fi

  if [ "$PHIONE" != "" ];
  then
    printf "%s" "$PHIONE" > Phione.txt
    export CATFILE="Phione.txt"
    export CATNAME="Phione"
    $CATEGORIZE
    rm Phione.txt
    unset PHIONE
  fi

  if [ "$PICHU" != "" ];
  then
    printf "%s" "$PICHU" > Pichu.txt
    export CATFILE="Pichu.txt"
    export CATNAME="Pichu"
    $CATEGORIZE
    rm Pichu.txt
    unset PICHU
  fi

  if [ "$PIDGEOT" != "" ];
  then
    printf "%s" "$PIDGEOT" > Pidgeot.txt
    export CATFILE="Pidgeot.txt"
    export CATNAME="Pidgeot"
    $CATEGORIZE
    rm Pidgeot.txt
    unset PIDGEOT
  fi

  if [ "$PIDGEOTTO" != "" ];
  then
    printf "%s" "$PIDGEOTTO" > Pidgeotto.txt
    export CATFILE="Pidgeotto.txt"
    export CATNAME="Pidgeotto"
    $CATEGORIZE
    rm Pidgeotto.txt
    unset PIDGEOTTO
  fi

  if [ "$PIDGEY" != "" ];
  then
    printf "%s" "$PIDGEY" > Pidgey.txt
    export CATFILE="Pidgey.txt"
    export CATNAME="Pidgey"
    $CATEGORIZE
    rm Pidgey.txt
    unset PIDGEY
  fi

  if [ "$PIDOVE" != "" ];
  then
    printf "%s" "$PIDOVE" > Pidove.txt
    export CATFILE="Pidove.txt"
    export CATNAME="Pidove"
    $CATEGORIZE
    rm Pidove.txt
    unset PIDOVE
  fi

  if [ "$PIGNITE" != "" ];
  then
    printf "%s" "$PIGNITE" > Pignite.txt
    export CATFILE="Pignite.txt"
    export CATNAME="Pignite"
    $CATEGORIZE
    rm Pignite.txt
    unset PIGNITE
  fi

  if [ "$PIKACHU" != "" ];
  then
    printf "%s" "$PIKACHU" > Pikachu.txt
    export CATFILE="Pikachu.txt"
    export CATNAME="Pikachu"
    $CATEGORIZE
    rm Pikachu.txt
    unset PIKACHU
  fi

  if [ "$PILOSWINE" != "" ];
  then
    printf "%s" "$PILOSWINE" > Piloswine.txt
    export CATFILE="Piloswine.txt"
    export CATNAME="Piloswine"
    $CATEGORIZE
    rm Piloswine.txt
    unset PILOSWINE
  fi

  if [ "$PINECO" != "" ];
  then
    printf "%s" "$PINECO" > Pineco.txt
    export CATFILE="Pineco.txt"
    export CATNAME="Pineco"
    $CATEGORIZE
    rm Pineco.txt
    unset PINECO
  fi

  if [ "$PINSIR" != "" ];
  then
    printf "%s" "$PINSIR" > Pinsir.txt
    export CATFILE="Pinsir.txt"
    export CATNAME="Pinsir"
    $CATEGORIZE
    rm Pinsir.txt
    unset PINSIR
  fi

  if [ "$PIPLUP" != "" ];
  then
    printf "%s" "$PIPLUP" > Piplup.txt
    export CATFILE="Piplup.txt"
    export CATNAME="Piplup"
    $CATEGORIZE
    rm Piplup.txt
    unset PIPLUP
  fi

  if [ "$PLUSLE" != "" ];
  then
    printf "%s" "$PLUSLE" > Plusle.txt
    export CATFILE="Plusle.txt"
    export CATNAME="Plusle"
    $CATEGORIZE
    rm Plusle.txt
    unset PLUSLE
  fi

  if [ "$POLITOED" != "" ];
  then
    printf "%s" "$POLITOED" > Politoed.txt
    export CATFILE="Politoed.txt"
    export CATNAME="Politoed"
    $CATEGORIZE
    rm Politoed.txt
    unset POLITOED
  fi

  if [ "$POLIWAG" != "" ];
  then
    printf "%s" "$POLIWAG" > Poliwag.txt
    export CATFILE="Poliwag.txt"
    export CATNAME="Poliwag"
    $CATEGORIZE
    rm Poliwag.txt
    unset POLIWAG
  fi

  if [ "$POLIWHIRL" != "" ];
  then
    printf "%s" "$POLIWHIRL" > Poliwhirl.txt
    export CATFILE="Poliwhirl.txt"
    export CATNAME="Poliwhirl"
    $CATEGORIZE
    rm Poliwhirl.txt
    unset POLIWHIRL
  fi

  if [ "$POLIWRATH" != "" ];
  then
    printf "%s" "$POLIWRATH" > Poliwrath.txt
    export CATFILE="Poliwrath.txt"
    export CATNAME="Poliwrath"
    $CATEGORIZE
    rm Poliwrath.txt
    unset POLIWRATH
  fi

  if [ "$PONYTA" != "" ];
  then
    printf "%s" "$PONYTA" > Ponyta.txt
    export CATFILE="Ponyta.txt"
    export CATNAME="Ponyta"
    $CATEGORIZE
    rm Ponyta.txt
    unset PONYTA
  fi

  if [ "$POOCHYENA" != "" ];
  then
    printf "%s" "$POOCHYENA" > Poochyena.txt
    export CATFILE="Poochyena.txt"
    export CATNAME="Poochyena"
    $CATEGORIZE
    rm Poochyena.txt
    unset POOCHYENA
  fi

  if [ "$PORYGON" != "" ];
  then
    printf "%s" "$PORYGON" > Porygon.txt
    export CATFILE="Porygon.txt"
    export CATNAME="Porygon"
    $CATEGORIZE
    rm Porygon.txt
    unset PORYGON
  fi

  if [ "$PORYGONZ" != "" ];
  then
    printf "%s" "$PORYGONZ" > Porygon-Z.txt
    export CATFILE="Porygon-Z.txt"
    export CATNAME="Porygon-Z"
    $CATEGORIZE
    rm Porygon-Z.txt
    unset PORYGONZ
  fi

  if [ "$PORYGON2" != "" ];
  then
    printf "%s" "$PORYGON2" > Porygon2.txt
    export CATFILE="Porygon2.txt"
    export CATNAME="Porygon2"
    $CATEGORIZE
    rm Porygon2.txt
    unset PORYGON2
  fi

  if [ "$PRIMEAPE" != "" ];
  then
    printf "%s" "$PRIMEAPE" > Primeape.txt
    export CATFILE="Primeape.txt"
    export CATNAME="Primeape"
    $CATEGORIZE
    rm Primeape.txt
    unset PRIMEAPE
  fi

  if [ "$PRINPLUP" != "" ];
  then
    printf "%s" "$PRINPLUP" > Prinplup.txt
    export CATFILE="Prinplup.txt"
    export CATNAME="Prinplup"
    $CATEGORIZE
    rm Prinplup.txt
    unset PRINPLUP
  fi

  if [ "$PROBOPASS" != "" ];
  then
    printf "%s" "$PROBOPASS" > Probopass.txt
    export CATFILE="Probopass.txt"
    export CATNAME="Probopass"
    $CATEGORIZE
    rm Probopass.txt
    unset PROBOPASS
  fi

  if [ "$PSYDUCK" != "" ];
  then
    printf "%s" "$PSYDUCK" > Psyduck.txt
    export CATFILE="Psyduck.txt"
    export CATNAME="Psyduck"
    $CATEGORIZE
    rm Psyduck.txt
    unset PSYDUCK
  fi

  if [ "$PUPITAR" != "" ];
  then
    printf "%s" "$PUPITAR" > Pupitar.txt
    export CATFILE="Pupitar.txt"
    export CATNAME="Pupitar"
    $CATEGORIZE
    rm Pupitar.txt
    unset PUPITAR
  fi

  if [ "$PURRLOIN" != "" ];
  then
    printf "%s" "$PURRLOIN" > Purrloin.txt
    export CATFILE="Purrloin.txt"
    export CATNAME="Purrloin"
    $CATEGORIZE
    rm Purrloin.txt
    unset PURRLOIN
  fi

  if [ "$PURUGLY" != "" ];
  then
    printf "%s" "$PURUGLY" > Purugly.txt
    export CATFILE="Purugly.txt"
    export CATNAME="Purugly"
    $CATEGORIZE
    rm Purugly.txt
    unset PURUGLY
  fi

  debug_end "Pokemon 'P' scripts"

fi