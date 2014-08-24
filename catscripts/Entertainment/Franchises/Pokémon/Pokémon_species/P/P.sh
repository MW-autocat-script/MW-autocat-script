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

  PACHIRISU=$(egrep -i "$KEYWORDS_PACHIRISU" "$NEWPAGES")
  PALKIA=$(egrep -i "$KEYWORDS_PALKIA" "$NEWPAGES")
  PALPITOAD=$(egrep -i "$KEYWORDS_PALPITOAD" "$NEWPAGES")
  PANPOUR=$(egrep -i "$KEYWORDS_PANPOUR" "$NEWPAGES")
  PANSAGE=$(egrep -i "$KEYWORDS_PANSAGE" "$NEWPAGES")
  PANSEAR=$(egrep -i "$KEYWORDS_PANSEAR" "$NEWPAGES")
  PARAS=$(egrep -i "$KEYWORDS_PARAS" "$NEWPAGES")
  PARASECT=$(egrep -i "$KEYWORDS_PARASECT" "$NEWPAGES")
  PATRAT=$(egrep -i "$KEYWORDS_PATRAT" "$NEWPAGES")
  PAWNIARD=$(egrep -i "$KEYWORDS_PAWNIARD" "$NEWPAGES")
  PELIPPER=$(egrep -i "$KEYWORDS_PELIPPER" "$NEWPAGES")
  PERSIAN=$(egrep -i "$KEYWORDS_PERSIAN" "$NEWPAGES" | egrep -iv "$KEYWORDS_PERSIAN_EXCLUDE")
  PETILIL=$(egrep -i "$KEYWORDS_PETILIL" "$NEWPAGES")
  PHANPY=$(egrep -i "$KEYWORDS_PHANPY" "$NEWPAGES")
  PHIONE=$(egrep -i "$KEYWORDS_PHIONE" "$NEWPAGES")
  PICHU=$(egrep -i "$KEYWORDS_PICHU" "$NEWPAGES")
  PIDGEOT=$(egrep -i "$KEYWORDS_PIDGEOT" "$NEWPAGES")
  PIDGEOTTO=$(egrep -i "$KEYWORDS_PIDGEOTTO" "$NEWPAGES")
  PIDGEY=$(egrep -i "$KEYWORDS_PIDGEY" "$NEWPAGES")
  PIDOVE=$(egrep -i "$KEYWORDS_PIDOVE" "$NEWPAGES")
  PIGNITE=$(egrep -i "$KEYWORDS_PIGNITE" "$NEWPAGES")
  PIKACHU=$(egrep -i "$KEYWORDS_PIKACHU" "$NEWPAGES")
  PILOSWINE=$(egrep -i "$KEYWORDS_PILOSWINE" "$NEWPAGES")
  PINECO=$(egrep -i "$KEYWORDS_PINECO" "$NEWPAGES")
  PINSIR=$(egrep -i "$KEYWORDS_PINSIR" "$NEWPAGES")
  PIPLUP=$(egrep -i "$KEYWORDS_PIPLUP" "$NEWPAGES")
  PLUSLE=$(egrep -i "$KEYWORDS_PLUSLE" "$NEWPAGES")
  POLITOED=$(egrep -i "$KEYWORDS_POLITOED" "$NEWPAGES")
  POLIWAG=$(egrep -i "$KEYWORDS_POLIWAG" "$NEWPAGES")
  POLIWHIRL=$(egrep -i "$KEYWORDS_POLIWHIRL" "$NEWPAGES")
  POLIWRATH=$(egrep -i "$KEYWORDS_POLIWRATH" "$NEWPAGES")
  PONYTA=$(egrep -i "$KEYWORDS_PONYTA" "$NEWPAGES")
  POOCHYENA=$(egrep -i "$KEYWORDS_POOCHYENA" "$NEWPAGES")
  PORYGON=$(egrep -i "$KEYWORDS_PORYGON" "$NEWPAGES")
  PORYGONZ=$(egrep -i "$KEYWORDS_PORYGONZ" "$NEWPAGES")
  PORYGON2=$(egrep -i "$KEYWORDS_PORYGON2" "$NEWPAGES")
  PRIMEAPE=$(egrep -i "$KEYWORDS_PRIMEAPE" "$NEWPAGES")
  PRINPLUP=$(egrep -i "$KEYWORDS_PRINPLUP" "$NEWPAGES")
  PROBOPASS=$(egrep -i "$KEYWORDS_PROBOPASS" "$NEWPAGES")
  PSYDUCK=$(egrep -i "$KEYWORDS_PSYDUCK" "$NEWPAGES")
  PUPITAR=$(egrep -i "$KEYWORDS_PUPITAR" "$NEWPAGES")
  PURRLOIN=$(egrep -i "$KEYWORDS_PURRLOIN" "$NEWPAGES")
  PURUGLY=$(egrep -i "$KEYWORDS_PURUGLY" "$NEWPAGES")  

  categorize "PACHIRISU" "Pachirisu"
  categorize "PALKIA" "Palkia"
  categorize "PALPITOAD" "Palpitoad"
  categorize "PANPOUR" "Panpour"
  categorize "PANSAGE" "Pansage"
  categorize "PANSEAR" "Pansear"
  categorize "PARAS" "Paras"
  categorize "PARASECT" "Parasect"
  categorize "PATRAT" "Patrat"
  categorize "PAWNIARD" "Pawniard"
  categorize "PELIPPER" "Pelipper"
  categorize "PERSIAN" "Persian"
  categorize "PETILIL" "Petilil"
  categorize "PHANPY" "Phanpy"
  categorize "PHIONE" "Phione"
  categorize "PICHU" "Pichu"
  categorize "PIDGEOT" "Pidgeot"
  categorize "PIDGEOTTO" "Pidgeotto"
  categorize "PIDGEY" "Pidgey"
  categorize "PIDOVE" "Pidove"
  categorize "PIGNITE" "Pignite"
  categorize "PIKACHU" "Pikachu"
  categorize "PILOSWINE" "Piloswine"
  categorize "PINECO" "Pineco"
  categorize "PINSIR" "Pinsir"
  categorize "PIPLUP" "Piplup"
  categorize "PLUSLE" "Plusle"
  categorize "POLITOED" "Politoed"
  categorize "POLIWAG" "Poliwag"
  categorize "POLIWHIRL" "Poliwhirl"
  categorize "POLIWRATH" "Poliwrath"
  categorize "PONYTA" "Ponyta"
  categorize "POOCHYENA" "Poochyena"
  categorize "PORYGON" "Porygon"
  categorize "PORYGONZ" "Porygon-Z"
  categorize "PORYGON2" "Porygon2"
  categorize "PRIMEAPE" "Primeape"
  categorize "PRINPLUP" "Prinplup"
  categorize "PROBOPASS" "Probopass"
  categorize "PSYDUCK" "Psyduck"
  categorize "PUPITAR" "Pupitar"
  categorize "PURRLOIN" "Purrloin"
  categorize "PURUGLY" "Purugly"  

  debug_end "Pokemon 'P' scripts"

fi