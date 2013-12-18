#!/bin/bash

KEYWORDS_ACTINIUM="\bActinium"
KEYWORDS_THORIUM="Thorium"
KEYWORDS_THORIUM_EXCLUDE="World of Warcraft"
KEYWORDS_PROTACTINIUM="Protactinium"
KEYWORDS_URANIUM="Uranium"
KEYWORDS_NEPTUNIUM="Neptunium"
KEYWORDS_PLUTONIUM="Plutonium"
KEYWORDS_PLUTONIUM_EXCLUDE="The Sims|Duke Nukem"
KEYWORDS_AMERICIUM="Americium"
KEYWORDS_CURIUM="Curium"
KEYWORDS_BERKELIUM="Berkelium"
KEYWORDS_CALIFORNIUM="Californium"
KEYWORDS_EINSTEINIUM="Einsteinium"
KEYWORDS_FERMIUM="\bFermium"
KEYWORDS_MENDELEVIUM="Mendelevium"
KEYWORDS_NOBELIUM="Nobelium"
KEYWORDS_LAWRENCIUM="Lawrencium"
KEYWORDS_ACTINIDESERIES_ALL="$KEYWORDS_ACTINIUM|$KEYWORDS_AMERICIUM|$KEYWORDS_BERKELIUM|$KEYWORDS_CALIFORNIUM|$KEYWORDS_CURIUM|$KEYWORDS_EINSTEINIUM|$KEYWORDS_FERMIUM|$KEYWORDS_LAWRENCIUM|$KEYWORDS_MENDELEVIUM|$KEYWORDS_NEPTUNIUM|$KEYWORDS_NOBELIUM|$KEYWORDS_PLUTONIUM|$KEYWORDS_PROTACTINIUM|$KEYWORDS_THORIUM|$KEYWORDS_URANIUM"

if [ "$1" == "" ];
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Actinide series\n"
  fi

  ACTINIUM=`egrep -i "$KEYWORDS_ACTINIUM" newpages.txt`
  THORIUM=`egrep -i "$KEYWORDS_THORIUM" newpages.txt | egrep -iv "$KEYWORDS_THORIUM_EXCLUDE"`
  PROTACTINIUM=`egrep -i "$KEYWORDS_PROTACTINIUM" newpages.txt`
  URANIUM=`egrep -i "$KEYWORDS_URANIUM" newpages.txt`
  NEPTUNIUM=`egrep -i "$KEYWORDS_NEPTUNIUM" newpages.txt`
  PLUTONIUM=`egrep -i "$KEYWORDS_PLUTONIUM" newpages.txt | egrep -iv "$KEYWORDS_PLUTONIUM_EXCLUDE"`
  AMERCIUM=`egrep -i "$KEYWORDS_AMERICIUM" newpages.txt`
  CURIUM=`egrep -i "$KEYWORDS_CURIUM" newpages.txt`
  BERKELIUM=`egrep -i "$KEYWORDS_BERKELIUM" newpages.txt`
  CALIFORNIUM=`egrep -i "$KEYWORDS_CALIFORNIUM" newpages.txt`
  EINSTEINIUM=`egrep -i "$KEYWORDS_EINSTEINIUM" newpages.txt`
  FERMIUM=`egrep -i "$KEYWORDS_FERMIUM" newpages.txt`
  MENDELEVIUM=`egrep -i "$KEYWORDS_MENDELEVIUM" newpages.txt`
  NOBELIUM=`egrep -i "$KEYWORDS_NOBELIUM" newpages.txt `
  LAWRENCIUM=`egrep -i "$KEYWORDS_LAWRENCIUM" newpages.txt`

  if [ "$ACTINIUM" != "" ] ;
  then
    printf "$ACTINIUM" > Actinium.txt
    export CATFILE="Actinium.txt"
    export CATNAME="Actinium"
    $CATEGORIZE
    rm Actinium.txt
    unset ACTINIUM
  fi

  if [ "$THORIUM" != "" ] ;
  then
    printf "$THORIUM" > Thorium.txt
    export CATFILE="Thorium.txt"
    export CATNAME="Thorium"
    $CATEGORIZE
    rm Thorium.txt
    unset THORIUM
  fi

  if [ "$PROTACTINIUM" != "" ] ;
  then
    print "$PROTACTINIUM" > Protactinium.txt
    export CATFILE="Protactinium.txt"
    export CATNAME="Protactinium"
    $CATEGORIZE
    rm Protactinium.txt
    unset PROTACTINIUM
  fi

  if [ "$URANIUM" != "" ] ;
  then
    printf "$URANIUM" > Uranium.txt
    export CATFILE="Uranium.txt"
    export CATNAME="Uranium"
    $CATEGORIZE
    rm Uranium.txt
    unset URANIUM
  fi

  if [ "$NEPTUNIUM" != "" ] ;
  then
    printf "$NEPTUNIUM" > Neptunium.txt
    export CATFILE="Neptunium.txt"
    export CATNAME="Neptunium"
    $CATEGORIZE
    rm Neptunium.txt
    unset NEPTUNIUM
  fi

  if [ "$PLUTONIUM" != "" ] ;
  then
    printf "$PLUTONIUM" > Plutonium.txt
    export CATFILE="Plutonium.txt"
    export CATNAME="Plutonium"
    $CATEGORIZE
    rm Plutonium.txt
    unset PLUTONIUM
  fi

  if [ "$AMERCIUM" != "" ] ;
  then
    printf "$AMERCIUM" > Americium.txt
    export CATFILE="Americium.txt"
    export CATNAME="Americium"
    $CATEGORIZE
    rm Americium.txt
    unset AMERCIUM
  fi

  if [ "$CURIUM" != "" ] ;
  then
    printf "$CURIUM" > Curium.txt
    export CATFILE="Curium.txt"
    export CATNAME="Curium"
    $CATEGORIZE
    rm Curium.txt
    unset CURIUM
  fi

  if [ "$BERKELIUM" != "" ] ;
  then
    printf "$BERKELIUM" > Berkelium.txt
    export CATFILE="Berkelium.txt"
    export CATNAME="Berkelium"
    $CATEGORIZE
    rm Berkelium.txt
    unset BERKELIUM
  fi

  if [ "$CALIFORNIUM" != "" ] ;
  then
    printf "$CALIFORNIUM" > Californium.txt
    export CATFILE="Californium.txt"
    export CATNAME="Californium"
    $CATEGORIZE
    rm Californium.txt
    unset CALIFORNIUM
  fi

  if [ "$EINSTEINIUM" != "" ] ;
  then
    printf "$EINSTEINIUM" > Einsteinium.txt
    export CATFILE="Einsteinium.txt"
    export CATNAME="Einsteinium"
    $CATEGORIZE
    rm Einsteinium.txt
    unset EINSTEINIUM
  fi

  if [ "$FERMIUM" != "" ] ;
  then
    printf "$FERMIUM" > Fermium.txt
    export CATFILE="Fermium.txt"
    export CATNAME="Fermium"
    $CATEGORIZE
    rm Fermium.txt
    unset FERMIUM
  fi

  if [ "$MENDELEVIUM" != "" ] ;
  then
    printf "$MENDELEVIUM" > Mendelevium.txt
    export CATFILE="Mendelevium.txt"
    export CATNAME="Mendelevium"
    $CATEGORIZE
    rm Mendelevium.txt
    unset MENDELEVIUM
  fi

  if [ "$NOBELIUM" != "" ] ;
  then
    printf "$NOBELIUM" > Nobelium.txt
    export CATFILE="Nobelium.txt"
    export CATNAME="Nobelium"
    $CATEGORIZE
    rm Nobelium.txt
    unset NOBELIUM
  fi

  if [ "$LAWRENCIUM" != "" ] ;
  then
    printf "$LAWRENCIUM" > Lawrencium.txt
    export CATFILE="Lawrencium.txt"
    export CATNAME="Lawrencium"
    $CATEGORIZE
    rm Lawrencium.txt
    unset LAWRENCIUM
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Actinide series\n"
  fi

fi