#!/bin/bash

KEYWORDS_RAICHU="Raichu"
KEYWORDS_RAIKOU="Raikou"
KEYWORDS_RALTS="Ralts"
KEYWORDS_RAMPARDOS="Rampardos"
KEYWORDS_RAPIDASH="Rapidash"
KEYWORDS_RATICATE="Raticate"
KEYWORDS_RATTATA="Rattata"
KEYWORDS_RAYQUAZA="Rayquaza"
KEYWORDS_REGICE="Regice"
KEYWORDS_REGIGIGAS="Regigigas"
KEYWORDS_REGIROCK="Regirock"
KEYWORDS_REGISTEEL="Registeel"
KEYWORDS_RELICANTH="Relicanth"
KEYWORDS_REMORAID="Remoraid"
KEYWORDS_RESHIRAM="Reshiram"
KEYWORDS_REUNICLUS="Reuniclus"
KEYWORDS_RHYDON="Rhydon"
KEYWORDS_RHYHORN="Rhyhorn"
KEYWORDS_RHYPERIOR="Rhyperior"
KEYWORDS_RIOLU="Riolu"
KEYWORDS_ROGGENROLA="Roggenrola"
KEYWORDS_ROSELIA="Roselia"
KEYWORDS_ROSERADE="Roserade"
KEYWORDS_ROTOM="Rotom"
KEYWORDS_RUFFLET="Rufflet"

if [ "$1" == "" ];
then

  debug_start "Pokemon species R"

  RAICHU=$(egrep -i "$KEYWORDS_RAICHU" "$NEWPAGES")
  RAIKOU=$(egrep -i "$KEYWORDS_RAIKOU" "$NEWPAGES")
  RALTS=$(egrep -i "$KEYWORDS_RALTS" "$NEWPAGES")
  RAMPARDOS=$(egrep -i "$KEYWORDS_RAMPARDOS" "$NEWPAGES")
  RAPIDASH=$(egrep -i "$KEYWORDS_RAPIDASH" "$NEWPAGES")
  RATICATE=$(egrep -i "$KEYWORDS_RATICATE" "$NEWPAGES")
  RATTATA=$(egrep -i "$KEYWORDS_RATTATA" "$NEWPAGES")
  RAYQUAZA=$(egrep -i "$KEYWORDS_RAYQUAZA" "$NEWPAGES")
  REGICE=$(egrep -i "$KEYWORDS_REGICE" "$NEWPAGES")
  REGIGIGAS=$(egrep -i "$KEYWORDS_REGIGIGAS" "$NEWPAGES")
  REGIROCK=$(egrep -i "$KEYWORDS_REGIROCK" "$NEWPAGES")
  REGISTEEL=$(egrep -i "$KEYWORDS_REGISTEEL" "$NEWPAGES")
  RELICANTH=$(egrep -i "$KEYWORDS_RELICANTH" "$NEWPAGES")
  REMORAID=$(egrep -i "$KEYWORDS_REMORAID" "$NEWPAGES")
  RESHIRAM=$(egrep -i "$KEYWORDS_RESHIRAM" "$NEWPAGES")
  REUNICLUS=$(egrep -i "$KEYWORDS_REUNICLUS" "$NEWPAGES")
  RHYDON=$(egrep -i "$KEYWORDS_RHYDON" "$NEWPAGES")
  RHYHORN=$(egrep -i "$KEYWORDS_RHYHORN" "$NEWPAGES")
  RHYPERIOR=$(egrep -i "$KEYWORDS_RHYPERIOR" "$NEWPAGES")
  RIOLU=$(egrep -i "$KEYWORDS_RIOLU" "$NEWPAGES")
  ROGGENROLA=$(egrep -i "$KEYWORDS_ROGGENROLA" "$NEWPAGES")
  ROSELIA=$(egrep -i "$KEYWORDS_ROSELIA" "$NEWPAGES")
  ROSERADE=$(egrep -i "$KEYWORDS_ROSERADE" "$NEWPAGES")
  ROTOM=$(egrep -i "$KEYWORDS_ROTOM" "$NEWPAGES")
  RUFFLET=$(egrep -i "$KEYWORDS_RUFFLET" "$NEWPAGES")

  categorize "RAICHU" "Raichu"
  categorize "RAIKOU" "Raikou"
  categorize "RALTS" "Ralts"
  categorize "RAMPARDOS" "Rampardos"
  categorize "RAPIDASH" "Rapidash"
  categorize "RATICATE" "Raticate"
  categorize "RATTATA" "Rattata"
  categorize "RAYQUAZA" "Rayquaza"
  categorize "REGICE" "Regice"
  categorize "REGIGIGAS" "Regigigas"
  categorize "REGIROCK" "Regirock"
  categorize "REGISTEEL" "Registeel"
  categorize "RELICANTH" "Relicanth"
  categorize "REMORAID" "Remoraid"
  categorize "RESHIRAM" "Reshiram"
  categorize "REUNICLUS" "Reuniclus"
  categorize "RHYDON" "Rhydon"
  categorize "RHYHORN" "Rhyhorn"
  categorize "RHYPERIOR" "Rhyperior"
  categorize "RIOLU" "Riolu"
  categorize "ROGGENROLA" "Roggenrola"
  categorize "ROSELIA" "Roselia"
  categorize "ROSERADE" "Roserade"
  categorize "ROTOM" "Rotom"
  categorize "RUFFLET" "Rufflet"

  debug_end "Pokemon species R"

fi
