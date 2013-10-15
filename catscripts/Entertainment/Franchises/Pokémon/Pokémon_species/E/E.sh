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


  Eelektrik=`stat --print=%s Eelektrik.txt`
  Eelektross=`stat --print=%s Eelektross.txt`
  Eevee=`stat --print=%s Eevee.txt`
  Ekans=`stat --print=%s Ekans.txt`
  Electabuzz=`stat --print=%s Electabuzz.txt`
  Electivire=`stat --print=%s Electivire.txt`
  Electrike=`stat --print=%s Electrike.txt`
  Electrode=`stat --print=%s Electrode.txt`
  Elekid=`stat --print=%s Elekid.txt`
  Elgyem=`stat --print=%s Elgyem.txt`
  Emboar=`stat --print=%s Emboar.txt`
  Emolga=`stat --print=%s Emolga.txt`
  Empoleon=`stat --print=%s Empoleon.txt`
  Entei=`stat --print=%s Entei.txt`
  Escavalier=`stat --print=%s Escavalier.txt`
  Espeon=`stat --print=%s Espeon.txt`
  Excadrill=`stat --print=%s Excadrill.txt`
  Exeggcute=`stat --print=%s Exeggcute.txt`
  Exeggutor=`stat --print=%s Exeggutor.txt`
  Exploud=`stat --print=%s Exploud.txt`

  if [ $Eelektrik -ne 0 ];
  then
    export CATFILE="Eelektrik.txt"
    export CATNAME="Eelektrik"
    $CATEGORIZE
  fi

  if [ $Eelektross -ne 0 ];
  then
    export CATFILE="Eelektross.txt"
    export CATNAME="Eelektross"
    $CATEGORIZE
  fi

  if [ $Eevee -ne 0 ];
  then
    export CATFILE="Eevee.txt"
    export CATNAME="Eevee"
    $CATEGORIZE
  fi

  if [ $Ekans -ne 0 ];
  then
    export CATFILE="Ekans.txt"
    export CATNAME="Ekans"
    $CATEGORIZE
  fi

  if [ $Electabuzz -ne 0 ];
  then
    export CATFILE="Electabuzz.txt"
    export CATNAME="Electabuzz"
    $CATEGORIZE
  fi

  if [ $Electivire -ne 0 ];
  then
    export CATFILE="Electivire.txt"
    export CATNAME="Electivire"
    $CATEGORIZE
  fi

  if [ $Electrike -ne 0 ];
  then
    export CATFILE="Electrike.txt"
    export CATNAME="Electrike"
    $CATEGORIZE
  fi

  if [ $Electrode -ne 0 ];
  then
    export CATFILE="Electrode.txt"
    export CATNAME="Electrode"
    $CATEGORIZE
  fi

  if [ $Elekid -ne 0 ];
  then
    export CATFILE="Elekid.txt"
    export CATNAME="Elekid"
    $CATEGORIZE
  fi

  if [ $Elgyem -ne 0 ];
  then
    export CATFILE="Elgyem.txt"
    export CATNAME="Elgyem"
    $CATEGORIZE
  fi

  if [ $Emboar -ne 0 ];
  then
    export CATFILE="Emboar.txt"
    export CATNAME="Emboar"
    $CATEGORIZE
  fi

  if [ $Emolga -ne 0 ];
  then
    export CATFILE="Emolga.txt"
    export CATNAME="Emolga"
    $CATEGORIZE
  fi

  if [ $Empoleon -ne 0 ];
  then
    export CATFILE="Empoleon.txt"
    export CATNAME="Empoleon"
    $CATEGORIZE
  fi

  if [ $Entei -ne 0 ];
  then
    export CATFILE="Entei.txt"
    export CATNAME="Entei"
    $CATEGORIZE
  fi

  if [ $Escavalier -ne 0 ];
  then
    export CATFILE="Escavalier.txt"
    export CATNAME="Escavalier"
    $CATEGORIZE
  fi

  if [ $Espeon -ne 0 ];
  then
    export CATFILE="Espeon.txt"
    export CATNAME="Espeon"
    $CATEGORIZE
  fi

  if [ $Excadrill -ne 0 ];
  then
    export CATFILE="Excadrill.txt"
    export CATNAME="Excadrill"
    $CATEGORIZE
  fi

  if [ $Exeggcute -ne 0 ];
  then
    export CATFILE="Exeggcute.txt"
    export CATNAME="Exeggcute"
    $CATEGORIZE
  fi

  if [ $Exeggutor -ne 0 ];
  then
    export CATFILE="Exeggutor.txt"
    export CATNAME="Exeggutor"
    $CATEGORIZE
  fi

  if [ $Exploud -ne 0 ];
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