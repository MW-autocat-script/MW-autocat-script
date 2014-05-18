#!/bin/bash

KEYWORDS_EELEKTRIK="Eelektrik"
KEYWORDS_EELEKTROSS="Eelektross"
KEYWORDS_EEVEE="Eevee"
KEYWORDS_EKANS="Ekans"
KEYWORDS_ELECTABUZZ="Electabuzz"
KEYWORDS_ELECTIVIRE="Electivire"
KEYWORDS_ELECTRIKE="Electrike"
KEYWORDS_ELECTRODE="Electrode"
KEYWORDS_ELEKID="Elekid"
KEYWORDS_ELGYEM="Elgyem"
KEYWORDS_EMBOAR="Emboar"
KEYWORDS_EMOLGA="Emolga"
KEYWORDS_EMPOLEON="Empoleon"
KEYWORDS_ENTEI="Entei"
KEYWORDS_ESCAVALIER="Escavalier"
KEYWORDS_ESPEON="Espeon"
KEYWORDS_EXCADRILL="Excadrill"
KEYWORDS_EXEGGCUTE="Exeggcute"
KEYWORDS_EXEGGUTOR="Exeggutor"
KEYWORDS_EXPLOUD="Exploud"
KEYWORDS_POKEMONSPECIES_E="$KEYWORDS_EELEKTRIK|$KEYWORDS_EELEKTROSS|$KEYWORDS_EEVEE|$KEYWORDS_EKANS|$KEYWORDS_ELECTABUZZ|$KEYWORDS_ELECTIVIRE|$KEYWORDS_ELECTRIKE|$KEYWORDS_ELECTRODE|$KEYWORDS_ELEKID|$KEYWORDS_ELGYEM|$KEYWORDS_EMBOAR|$KEYWORDS_EMOLGA|$KEYWORDS_EMPOLEON|$KEYWORDS_ENTEI|$KEYWORDS_ESCAVALIER|$KEYWORDS_ESPEON|$KEYWORDS_EXCADRILL|$KEYWORDS_EXEGGCUTE|$KEYWORDS_EXEGGUTOR|$KEYWORDS_EXPLOUD"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pokemon species E"

  EELEKTRIK=$(egrep -i "$KEYWORDS_EELEKTRIK" newpages.txt)
  EELEKTROSS=$(egrep -i "$KEYWORDS_EELEKTROSS" newpages.txt)
  EEVEE=$(egrep -i "$KEYWORDS_EEVEE" newpages.txt)
  EKANS=$(egrep -i "$KEYWORDS_EKANS" newpages.txt)
  ELECTABUZZ=$(egrep -i "$KEYWORDS_ELECTABUZZ" newpages.txt)
  ELECTIVIRE=$(egrep -i "$KEYWORDS_ELECTIVIRE" newpages.txt)
  ELECTRIKE=$(egrep -i "$KEYWORDS_ELECTRIKE" newpages.txt)
  ELECTRODE=$(egrep -i "$KEYWORDS_ELECTRODE" newpages.txt)
  ELEKID=$(egrep -i "$KEYWORDS_ELEKID" newpages.txt)
  ELGYEM=$(egrep -i "$KEYWORDS_ELGYEM" newpages.txt)
  EMBOAR=$(egrep -i "$KEYWORDS_EMBOAR" newpages.txt)
  EMOLGA=$(egrep -i "$KEYWORDS_EMOLGA" newpages.txt)
  EMPOLEON=$(egrep -i "$KEYWORDS_EMPOLEON" newpages.txt)
  ENTEI=$(egrep -i "$KEYWORDS_ENTEI" newpages.txt)
  ESCAVALIER=$(egrep -i "$KEYWORDS_ESCAVALIER" newpages.txt)
  ESPEON=$(egrep -i "$KEYWORDS_ESPEON" newpages.txt)
  EXCADRILL=$(egrep -i "$KEYWORDS_EXCADRILL" newpages.txt)
  EXEGGCUTE=$(egrep -i "$KEYWORDS_EXEGGCUTE" newpages.txt)
  EXEGGUTOR=$(egrep -i "$KEYWORDS_EXEGGUTOR" newpages.txt)
  EXPLOUD=$(egrep -i "$KEYWORDS_EXPLOUD" newpages.txt)

  if [ "$EELEKTRIK" != "" ];
  then
    printf "%s" "$EELEKTRIK" > Eelektrik.txt
    export CATFILE="Eelektrik.txt"
    export CATNAME="Eelektrik"
    $CATEGORIZE
    rm Eelektrik.txt
    unset EELEKTRIK
  fi

  if [ "$EELEKTROSS" != "" ];
  then
    printf "%s" "$EELEKTROSS" > Eelektross.txt
    export CATFILE="Eelektross.txt"
    export CATNAME="Eelektross"
    $CATEGORIZE
    rm Eelektross.txt
    unset EELEKTROSS
  fi

  if [ "$EEVEE" != "" ];
  then
    printf "%s" "$EEVEE" > Eevee.txt
    export CATFILE="Eevee.txt"
    export CATNAME="Eevee"
    $CATEGORIZE
    rm Eevee.txt
    unset EEVEE
  fi

  if [ "$EKANS" != "" ];
  then
    printf "%s" "$EKANS" > Ekans.txt
    export CATFILE="Ekans.txt"
    export CATNAME="Ekans"
    $CATEGORIZE
    rm Ekans.txt
    unset EKANS
  fi

  if [ "$ELECTABUZZ" != "" ];
  then
    printf "%s" "$ELECTABUZZ" > Electabuzz.txt
    export CATFILE="Electabuzz.txt"
    export CATNAME="Electabuzz"
    $CATEGORIZE
    rm Electabuzz.txt
    unset ELECTABUZZ
  fi

  if [ "$ELECTIVIRE" != "" ];
  then
    printf "%s" "$ELECTIVIRE" > Electivire.txt
    export CATFILE="Electivire.txt"
    export CATNAME="Electivire"
    $CATEGORIZE
    rm Electivire.txt
    unset ELECTIVIRE
  fi

  if [ "$ELECTRIKE" != "" ];
  then
    printf "%s" "$ELECTRIKE" > Electrike.txt
    export CATFILE="Electrike.txt"
    export CATNAME="Electrike"
    $CATEGORIZE
    rm Electrike.txt
    unset ELECTRIKE
  fi

  if [ "$ELECTRODE" != "" ];
  then
    printf "%s" "$ELECTRODE" > Electrode.txt
    export CATFILE="Electrode.txt"
    export CATNAME="Electrode"
    $CATEGORIZE
    rm Electrode.txt
    unset ELECTRODE
  fi

  if [ "$ELEKID" != "" ];
  then
    printf "%s" "$ELEKID" > Elekid.txt
    export CATFILE="Elekid.txt"
    export CATNAME="Elekid"
    $CATEGORIZE
    rm Elekid.txt
    unset ELEKID
  fi

  if [ "$ELGYEM" != "" ];
  then
    printf "%s" "$ELGYEM" > Elgyem.txt
    export CATFILE="Elgyem.txt"
    export CATNAME="Elgyem"
    $CATEGORIZE
    rm Elgyem.txt
    unset ELGYEM
  fi

  if [ "$EMBOAR" != "" ];
  then
    printf "%s" "$EMBOAR" > Emboar.txt
    export CATFILE="Emboar.txt"
    export CATNAME="Emboar"
    $CATEGORIZE
    rm Emboar.txt
    unset EMBOAR
  fi

  if [ "$EMOLGA" != "" ];
  then
    printf "%s" "$EMOLGA" > Emolga.txt
    export CATFILE="Emolga.txt"
    export CATNAME="Emolga"
    $CATEGORIZE
    rm Emolga.txt
    unset EMOLGA
  fi

  if [ "$EMPOLEON" != "" ];
  then
    printf "%s" "$EMPOLEON" > Empoleon.txt
    export CATFILE="Empoleon.txt"
    export CATNAME="Empoleon"
    $CATEGORIZE
    rm Empoleon.txt
    unset EMPOLEON
  fi

  if [ "$ENTEI" != "" ];
  then
    printf "%s" "$ENTEI" > Entei.txt
    export CATFILE="Entei.txt"
    export CATNAME="Entei"
    $CATEGORIZE
    rm Entei.txt
    unset ENTEI
  fi

  if [ "$ESCAVALIER" != "" ];
  then
    printf "%s" "$ESCAVALIER" > Escavalier.txt
    export CATFILE="Escavalier.txt"
    export CATNAME="Escavalier"
    $CATEGORIZE
    rm Escavalier.txt
    unset ESCAVALIER
  fi

  if [ "$ESPEON" != "" ];
  then
    printf "%s" "$ESPEON" > Espeon.txt
    export CATFILE="Espeon.txt"
    export CATNAME="Espeon"
    $CATEGORIZE
    rm Espeon.txt
    unset ESPEON
  fi

  if [ "$EXCADRILL" != "" ];
  then
    printf "%s" "$EXCADRILL" > Excadrill.txt
    export CATFILE="Excadrill.txt"
    export CATNAME="Excadrill"
    $CATEGORIZE
    rm Excadrill.txt
    unset EXCADRILL
  fi

  if [ "$EXEGGCUTE" != "" ];
  then
    printf "%s" "$EXEGGCUTE" > Exeggcute.txt
    export CATFILE="Exeggcute.txt"
    export CATNAME="Exeggcute"
    $CATEGORIZE
    rm Exeggcute.txt
    unset EXEGGCUTE
  fi

  if [ "$EXEGGUTOR" != "" ];
  then
    printf "%s" "$EXEGGUTOR" > Exeggutor.txt
    export CATFILE="Exeggutor.txt"
    export CATNAME="Exeggutor"
    $CATEGORIZE
    rm Exeggutor.txt
    unset EXEGGUTOR
  fi

  if [ "$EXPLOUD" != "" ];
  then
    printf "%s" "$EXPLOUD" > Exploud.txt
    export CATFILE="Exploud.txt"
    export CATNAME="Exploud"
    $CATEGORIZE
    rm Exploud.txt
    unset EXPLOUD
  fi

  debug_end "Pokemon species E"

fi