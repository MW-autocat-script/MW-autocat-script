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
  egrep -i "$KEYWORDS_EELEKTRIK" newpages.txt >> Eelektrik.txt
  egrep -i "$KEYWORDS_EELEKTROSS" newpages.txt >> Eelektross.txt
  egrep -i "$KEYWORDS_EEVEE" newpages.txt >> Eevee.txt
  egrep -i "$KEYWORDS_EKANS" newpages.txt >> Ekans.txt
  egrep -i "$KEYWORDS_ELECTABUZZ" newpages.txt >> Electabuzz.txt
  egrep -i "$KEYWORDS_ELECTIVIRE" newpages.txt >> Electivire.txt
  egrep -i "$KEYWORDS_ELECTRIKE" newpages.txt >> Electrike.txt
  egrep -i "$KEYWORDS_ELECTRODE" newpages.txt >> Electrode.txt
  egrep -i "$KEYWORDS_ELEKID" newpages.txt >> Elekid.txt
  egrep -i "$KEYWORDS_ELGYEM" newpages.txt >> Elgyem.txt
  egrep -i "$KEYWORDS_EMBOAR" newpages.txt >> Emboar.txt
  egrep -i "$KEYWORDS_EMOLGA" newpages.txt >> Emolga.txt
  egrep -i "$KEYWORDS_EMPOLEON" newpages.txt >> Empoleon.txt
  egrep -i "$KEYWORDS_ENTEI" newpages.txt >> Entei.txt
  egrep -i "$KEYWORDS_ESCAVALIER" newpages.txt >> Escavalier.txt
  egrep -i "$KEYWORDS_ESPEON" newpages.txt >> Espeon.txt
  egrep -i "$KEYWORDS_EXCADRILL" newpages.txt >> Excadrill.txt
  egrep -i "$KEYWORDS_EXEGGCUTE" newpages.txt >> Exeggcute.txt
  egrep -i "$KEYWORDS_EXEGGUTOR" newpages.txt >> Exeggutor.txt
  egrep -i "$KEYWORDS_EXPLOUD" newpages.txt >> Exploud.txt


  EELEKTRIK=$(stat --print=%s Eelektrik.txt)
  EELEKTROSS=$(stat --print=%s Eelektross.txt)
  EEVEE=$(stat --print=%s Eevee.txt)
  EKANS=$(stat --print=%s Ekans.txt)
  ELECTABUZZ=$(stat --print=%s Electabuzz.txt)
  ELECTIVIRE=$(stat --print=%s Electivire.txt)
  ELECTRIKE=$(stat --print=%s Electrike.txt)
  ELECTRODE=$(stat --print=%s Electrode.txt)
  ELEKID=$(stat --print=%s Elekid.txt)
  ELGYEM=$(stat --print=%s Elgyem.txt)
  EMBOAR=$(stat --print=%s Emboar.txt)
  EMOLGA=$(stat --print=%s Emolga.txt)
  EMPOLEON=$(stat --print=%s Empoleon.txt)
  ENTEI=$(stat --print=%s Entei.txt)
  ESCAVALIER=$(stat --print=%s Escavalier.txt)
  ESPEON=$(stat --print=%s Espeon.txt)
  EXCADRILL=$(stat --print=%s Excadrill.txt)
  EXEGGCUTE=$(stat --print=%s Exeggcute.txt)
  EXEGGUTOR=$(stat --print=%s Exeggutor.txt)
  EXPLOUD=$(stat --print=%s Exploud.txt)

  if [ $EELEKTRIK -ne 0 ];
  then
    export CATFILE="Eelektrik.txt"
    export CATNAME="Eelektrik"
    $CATEGORIZE
  fi

  if [ $EELEKTROSS -ne 0 ];
  then
    export CATFILE="Eelektross.txt"
    export CATNAME="Eelektross"
    $CATEGORIZE
  fi

  if [ $EEVEE -ne 0 ];
  then
    export CATFILE="Eevee.txt"
    export CATNAME="Eevee"
    $CATEGORIZE
  fi

  if [ $EKANS -ne 0 ];
  then
    export CATFILE="Ekans.txt"
    export CATNAME="Ekans"
    $CATEGORIZE
  fi

  if [ $ELECTABUZZ -ne 0 ];
  then
    export CATFILE="Electabuzz.txt"
    export CATNAME="Electabuzz"
    $CATEGORIZE
  fi

  if [ $ELECTIVIRE -ne 0 ];
  then
    export CATFILE="Electivire.txt"
    export CATNAME="Electivire"
    $CATEGORIZE
  fi

  if [ $ELECTRIKE -ne 0 ];
  then
    export CATFILE="Electrike.txt"
    export CATNAME="Electrike"
    $CATEGORIZE
  fi

  if [ $ELECTRODE -ne 0 ];
  then
    export CATFILE="Electrode.txt"
    export CATNAME="Electrode"
    $CATEGORIZE
  fi

  if [ $ELEKID -ne 0 ];
  then
    export CATFILE="Elekid.txt"
    export CATNAME="Elekid"
    $CATEGORIZE
  fi

  if [ $ELGYEM -ne 0 ];
  then
    export CATFILE="Elgyem.txt"
    export CATNAME="Elgyem"
    $CATEGORIZE
  fi

  if [ $EMBOAR -ne 0 ];
  then
    export CATFILE="Emboar.txt"
    export CATNAME="Emboar"
    $CATEGORIZE
  fi

  if [ $EMOLGA -ne 0 ];
  then
    export CATFILE="Emolga.txt"
    export CATNAME="Emolga"
    $CATEGORIZE
  fi

  if [ $EMPOLEON -ne 0 ];
  then
    export CATFILE="Empoleon.txt"
    export CATNAME="Empoleon"
    $CATEGORIZE
  fi

  if [ $ENTEI -ne 0 ];
  then
    export CATFILE="Entei.txt"
    export CATNAME="Entei"
    $CATEGORIZE
  fi

  if [ $ESCAVALIER -ne 0 ];
  then
    export CATFILE="Escavalier.txt"
    export CATNAME="Escavalier"
    $CATEGORIZE
  fi

  if [ $ESPEON -ne 0 ];
  then
    export CATFILE="Espeon.txt"
    export CATNAME="Espeon"
    $CATEGORIZE
  fi

  if [ $EXCADRILL -ne 0 ];
  then
    export CATFILE="Excadrill.txt"
    export CATNAME="Excadrill"
    $CATEGORIZE
  fi

  if [ $EXEGGCUTE -ne 0 ];
  then
    export CATFILE="Exeggcute.txt"
    export CATNAME="Exeggcute"
    $CATEGORIZE
  fi

  if [ $EXEGGUTOR -ne 0 ];
  then
    export CATFILE="Exeggutor.txt"
    export CATNAME="Exeggutor"
    $CATEGORIZE
  fi

  if [ $EXPLOUD -ne 0 ];
  then
    export CATFILE="Exploud.txt"
    export CATNAME="Exploud"
    $CATEGORIZE
  fi

  rm Eelektrik.txt
  rm Eelektross.txt
  rm Eevee.txt
  rm Ekans.txt
  rm Electabuzz.txt
  rm Electivire.txt
  rm Electrike.txt
  rm Electrode.txt
  rm Elekid.txt
  rm Elgyem.txt
  rm Emboar.txt
  rm Emolga.txt
  rm Empoleon.txt
  rm Entei.txt
  rm Escavalier.txt
  rm Espeon.txt
  rm Excadrill.txt
  rm Exeggcute.txt
  rm Exeggutor.txt
  rm Exploud.txt

fi