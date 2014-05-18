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

  RAICHU=$(egrep -i "$KEYWORDS_RAICHU" newpages.txt)
  RAIKOU=$(egrep -i "$KEYWORDS_RAIKOU" newpages.txt)
  RALTS=$(egrep -i "$KEYWORDS_RALTS" newpages.txt)
  RAMPARDOS=$(egrep -i "$KEYWORDS_RAMPARDOS" newpages.txt)
  RAPIDASH=$(egrep -i "$KEYWORDS_RAPIDASH" newpages.txt)
  RATICATE=$(egrep -i "$KEYWORDS_RATICATE" newpages.txt)
  RATTATA=$(egrep -i "$KEYWORDS_RATTATA" newpages.txt)
  RAYQUAZA=$(egrep -i "$KEYWORDS_RAYQUAZA" newpages.txt)
  REGICE=$(egrep -i "$KEYWORDS_REGICE" newpages.txt)
  REGIGIGAS=$(egrep -i "$KEYWORDS_REGIGIGAS" newpages.txt)
  REGIROCK=$(egrep -i "$KEYWORDS_REGIROCK" newpages.txt)
  REGISTEEL=$(egrep -i "$KEYWORDS_REGISTEEL" newpages.txt)
  RELICANTH=$(egrep -i "$KEYWORDS_RELICANTH" newpages.txt)
  REMORAID=$(egrep -i "$KEYWORDS_REMORAID" newpages.txt)
  RESHIRAM=$(egrep -i "$KEYWORDS_RESHIRAM" newpages.txt)
  REUNICLUS=$(egrep -i "$KEYWORDS_REUNICLUS" newpages.txt)
  RHYDON=$(egrep -i "$KEYWORDS_RHYDON" newpages.txt)
  RHYHORN=$(egrep -i "$KEYWORDS_RHYHORN" newpages.txt)
  RHYPERIOR=$(egrep -i "$KEYWORDS_RHYPERIOR" newpages.txt)
  RIOLU=$(egrep -i "$KEYWORDS_RIOLU" newpages.txt)
  ROGGENROLA=$(egrep -i "$KEYWORDS_ROGGENROLA" newpages.txt)
  ROSELIA=$(egrep -i "$KEYWORDS_ROSELIA" newpages.txt)
  ROSERADE=$(egrep -i "$KEYWORDS_ROSERADE" newpages.txt)
  ROTOM=$(egrep -i "$KEYWORDS_ROTOM" newpages.txt)
  RUFFLET=$(egrep -i "$KEYWORDS_RUFFLET" newpages.txt)

  if [ "$RAICHU" != "" ];
  then
    printf "%s" "$RAICHU" > Raichu.txt
    export CATFILE="Raichu.txt"
    export CATNAME="Raichu"
    $CATEGORIZE
    rm Raichu.txt
    unset RAICHU
  fi

  if [ "$RAIKOU" != "" ];
  then
    printf "%s" "$RAIKOU" > Raikou.txt
    export CATFILE="Raikou.txt"
    export CATNAME="Raikou"
    $CATEGORIZE
    rm Raikou.txt
    unset RAIKOU
  fi

  if [ "$RALTS" != "" ];
  then
    printf "%s" "$RALTS" > Ralts.txt
    export CATFILE="Ralts.txt"
    export CATNAME="Ralts"
    $CATEGORIZE
    rm Ralts.txt
    unset RALTS
  fi

  if [ "$RAMPARDOS" != "" ];
  then
    printf "%s" "$RAMPARDOS" > Rampardos.txt
    export CATFILE="Rampardos.txt"
    export CATNAME="Rampardos"
    $CATEGORIZE
    rm Rampardos.txt
    unset RAMPARDOS
  fi

  if [ "$RAPIDASH" != "" ];
  then
    printf "%s" "$RAPIDASH" > Rapidash.txt
    export CATFILE="Rapidash.txt"
    export CATNAME="Rapidash"
    $CATEGORIZE
    rm Rapidash.txt
    unset RAPIDASH
  fi

  if [ "$RATICATE" != "" ];
  then
    printf "%s" "$RATICATE" > Raticate.txt
    export CATFILE="Raticate.txt"
    export CATNAME="Raticate"
    $CATEGORIZE
    rm Raticate.txt
    unset RATICATE
  fi

  if [ "$RATTATA" != "" ];
  then
    printf "%s" "$RATTATA" > Rattata.txt
    export CATFILE="Rattata.txt"
    export CATNAME="Rattata"
    $CATEGORIZE
    rm Rattata.txt
    unset RATTATA
  fi

  if [ "$RAYQUAZA" != "" ];
  then
    printf "%s" "$RAYQUAZA" > Rayquaza.txt
    export CATFILE="Rayquaza.txt"
    export CATNAME="Rayquaza"
    $CATEGORIZE
    rm Rayquaza.txt
    unset RAYQUAZA
  fi

  if [ "$REGICE" != "" ];
  then
    printf "%s" "$REGICE" > Regice.txt
    export CATFILE="Regice.txt"
    export CATNAME="Regice"
    $CATEGORIZE
    rm Regice.txt
    unset REGICE
  fi

  if [ "$REGIGIGAS" != "" ];
  then
    printf "%s" "$REGIGIGAS" > Regigigas.txt
    export CATFILE="Regigigas.txt"
    export CATNAME="Regigigas"
    $CATEGORIZE
    rm Regigigas.txt
    unset REGIGIGAS
  fi

  if [ "$REGIROCK" != "" ];
  then
    printf "%s" "$REGIROCK" > Regirock.txt
    export CATFILE="Regirock.txt"
    export CATNAME="Regirock"
    $CATEGORIZE
    rm Regirock.txt
    unset REGIROCK
  fi

  if [ "$REGISTEEL" != "" ];
  then
    printf "%s" "$REGISTEEL" > Registeel.txt
    export CATFILE="Registeel.txt"
    export CATNAME="Registeel"
    $CATEGORIZE
    rm Registeel.txt
    unset REGISTEEL
  fi

  if [ "$RELICANTH" != "" ];
  then
    printf "%s" "$RELICANTH" > Relicanth.txt
    export CATFILE="Relicanth.txt"
    export CATNAME="Relicanth"
    $CATEGORIZE
    rm Relicanth.txt
    unset RELICANTH
  fi

  if [ "$REMORAID" != "" ];
  then
    printf "%s" "$REMORAID" > Remoraid.txt
    export CATFILE="Remoraid.txt"
    export CATNAME="Remoraid"
    $CATEGORIZE
    rm Remoraid.txt
    unset REMORAID
  fi

  if [ "$RESHIRAM" != "" ];
  then
    printf "%s" "$RESHIRAM" > Reshiram.txt
    export CATFILE="Reshiram.txt"
    export CATNAME="Reshiram"
    $CATEGORIZE
    rm Reshiram.txt
    unset RESHIRAM
  fi

  if [ "$REUNICLUS" != "" ];
  then
    printf "%s" "$REUNICLUS" > Reuniclus.txt
    export CATFILE="Reuniclus.txt"
    export CATNAME="Reuniclus"
    $CATEGORIZE
    rm Reuniclus.txt
    unset REUNICLUS
  fi

  if [ "$RHYDON" != "" ];
  then
    printf "%s" "$RHYDON" > Rhydon.txt
    export CATFILE="Rhydon.txt"
    export CATNAME="Rhydon"
    $CATEGORIZE
    rm Rhydon.txt
    unset RHYDON
  fi

  if [ "$RHYHORN" != "" ];
  then
    printf "%s" "$RHYHORN" > Rhyhorn.txt
    export CATFILE="Rhyhorn.txt"
    export CATNAME="Rhyhorn"
    $CATEGORIZE
    rm Rhyhorn.txt
    unset RHYHORN
  fi

  if [ "$RHYPERIOR" != "" ];
  then
    printf "%s" "$RHYPERIOR" > Rhyperior.txt
    export CATFILE="Rhyperior.txt"
    export CATNAME="Rhyperior"
    $CATEGORIZE
    rm Rhyperior.txt
    unset RHYPERIOR
  fi

  if [ "$RIOLU" != "" ];
  then
    printf "%s" "$RIOLU" > Riolu.txt
    export CATFILE="Riolu.txt"
    export CATNAME="Riolu"
    $CATEGORIZE
    rm Riolu.txt
    unset RIOLU
  fi

  if [ "$ROGGENROLA" != "" ];
  then
    printf "%s" "$ROGGENROLA" > Roggenrola.txt
    export CATFILE="Roggenrola.txt"
    export CATNAME="Roggenrola"
    $CATEGORIZE
    rm Roggenrola.txt
    unset ROGGENROLA
  fi

  if [ "$ROSELIA" != "" ];
  then
    printf "%s" "$ROSELIA" > Roselia.txt
    export CATFILE="Roselia.txt"
    export CATNAME="Roselia"
    $CATEGORIZE
    rm Roselia.txt
    unset ROSELIA
  fi

  if [ "$ROSERADE" != "" ];
  then
    printf "%s" "$ROSERADE" > Roserade.txt
    export CATFILE="Roserade.txt"
    export CATNAME="Roserade"
    $CATEGORIZE
    rm Roserade.txt
    unset ROSERADE
  fi

  if [ "$ROTOM" != "" ];
  then
    printf "%s" "$ROTOM" > Rotom.txt
    export CATFILE="Rotom.txt"
    export CATNAME="Rotom"
    $CATEGORIZE
    rm Rotom.txt
    unset ROTOM
  fi

  if [ "$RUFFLET" != "" ];
  then
    printf "%s" "$RUFFLET" > Rufflet.txt
    export CATFILE="Rufflet.txt"
    export CATNAME="Rufflet"
    $CATEGORIZE
    rm Rufflet.txt
    unset RUFFLET
  fi

  debug_end "Pokemon species R"

fi
