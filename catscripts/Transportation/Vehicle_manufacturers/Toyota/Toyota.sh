#!/bin/bash

KEYWORDS_TOYOTA_2000GT="Toyota(| )2000(| )GT|[0-9]{1,}(| )2000(| )GT"
KEYWORDS_TOYOTA_86="Toyota(| )86"
KEYWORDS_TOYOTA_ALLEX="Toyota(| )Allex|[0-9](| )Allex"
KEYWORDS_TOYOTA_AVALON="Toyota(| )Avalon|[0-9]{1,}(| )Avalon"
KEYWORDS_TOYOTA_CAMRY="Camry"
KEYWORDS_TOYOTA_COROLLA="Corolla|$KEYWORDS_TOYOTA_ALLEX" #The Allex is a rebadged Corolla hatchback
KEYWORDS_TOYOTA_PUBLICA="Toyota(| )(1000|Publica)|[0-9]{1,}(| )Publica"
KEYWORDS_TOYOTA_PRIUS="Prius"
KEYWORDS_TOYOTA_CARS="$KEYWORDS_TOYOTA_2000GT|$KEYWORDS_TOYOTA_86|$KEYWORDS_TOYOTA_ALLEX|$KEYWORDS_TOYOTA_AVALON|$KEYWORDS_TOYOTA_CAMRY|$KEYWORDS_TOYOTA_COROLLA|$KEYWORDS_TOYOTA_PUBLICA|$KEYWORDS_TOYOTA_PRIUS"
KEYWORDS_TOYOTA_CARS_NONPOP="$KEYWORDS_TOYOTA_2000GT|$KEYWORDS_TOYOTA_PUBLICA" #Cars which don't have their own category and should be placed in the parent
KEYWORDS_TOYOTA_4RUNNER="4Runner| 4(| )Runner\b"
KEYWORDS_TOYOTA_ALPHARD="Toyota(| )Alphard|[0-9]{1,}(| )Alphard" #Alphard is also the name of a star, so we can't grab just Alphard
KEYWORDS_LEXUS="\bLexus"
KEYWORDS_SCION="Scion"

if [ "$1" == "" ];
then

  debug_start "Toyota"

  AVALON=$(egrep -i "$KEYWORDS_TOYOTA_AVALON" "$NEWPAGES")
  CAMRY=$(egrep -i "$KEYWORDS_TOYOTA_CAMRY" "$NEWPAGES")
  COROLLA=$(egrep -i "$KEYWORDS_TOYOTA_COROLLA" "$NEWPAGES")
  PRIUS=$(egrep -i "$KEYWORDS_TOYOTA_PRIUS" "$NEWPAGES")
  LEXUS=$(egrep -i "$KEYWORDS_LEXUS" "$NEWPAGES")
  SCION=$(egrep -i "$KEYWORDS_SCION" "$NEWPAGES")

  if [ "$AVALON" != "" ];
  then
    printf "%s" "$AVALON" > ToyotaAvalon.txt
    export CATFILE="ToyotaAvalon.txt"
    export CATNAME="Toyota Avalon"
    $CATEGORIZE
    rm ToyotaAvalon.txt
    unset AVALON
  fi

  if [ "$CAMRY" != "" ];
  then
    printf "%s" "$CAMRY" > ToyotaCamry.txt
    export CATFILE="ToyotaCamry.txt"
    export CATNAME="Toyota Camry"
    $CATEGORIZE
    rm ToyotaCamry.txt
    unset CAMRY
  fi

  if [ "$COROLLA" != "" ];
  then
    printf "%s" "$COROLLA" > ToyotaCorolla.txt
    export CATFILE="ToyotaCorolla.txt"
    export CATNAME="Toyota Corolla"
    $CATEGORIZE
    rm ToyotaCorolla.txt
    unset COROLLA
  fi

  if [ "$PRIUS" != "" ];
  then
    printf "%s" "$PRIUS" > ToyotaPrius.txt
    export CATFILE="ToyotaPrius.txt"
    export CATNAME="Toyota Prius"
    $CATEGORIZE
    rm ToyotaPrius.txt
    unset PRIUS
  fi

  if [ "$LEXUS" != "" ];
  then
    printf "%s" "$LEXUS" > Lexus.txt
    export CATFILE="Lexus.txt"
    export CATNAME="Lexus"
    $CATEGORIZE
    rm Lexus.txt
    unset LEXUS
  fi

  if [ "$SCION" != "" ];
  then
    printf "%s" "$SCION" > Scion.txt
    export CATFILE="Scion.txt"
    export CATNAME="Scion"
    $CATEGORIZE
    rm Scion.txt
    unset SCION
  fi

  debug_end "Toyota"

fi