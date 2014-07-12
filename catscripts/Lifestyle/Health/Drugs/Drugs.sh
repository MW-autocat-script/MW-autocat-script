#!/bin/bash

KEYWORDS_DRUGS="drug(|s)\b"
KEYWORDS_MEDICATION="medication|prescription|ibuprofen|advil|tylenol|NSAID|asprin|Gynera\b|quinine|Abilify|aripiprazole|abiraterone|Zytiga|ablavar|gadofosveset|dysport|abobotulinumtoxin|Abraxane|Absorica|isotretinoin|Abstral|fentanyl|Campral|acamprosate|oxycontin|oxycodone|paclitaxel|Syndol|Adderall|Zyban\b|Wellbutrin|Voxra|Budeprion|Prexaton|Elontril|Aplenzin|Bupropion"
KEYWORDS_ILLEGALDRUGS="Illegal(| )drug|\bmeth|methamphetamine|\bLSD\b|methadone|heroin\b"
KEYWORDS_COCAINE="Cocaine|smoke(| )crack|crack(| )pipe"
KEYWORDS_MARIJUANA="marijuana|(buy|smoke|inhale).+(weed|pot\b|a joint)|cannabis|cannabinol"
KEYWORDS_ILLEGALDRUGS_EXCLUDE="$KEYWORDS_COCAINE|$KEYWORDS_MARIJUANA"
KEYWORDS_ILLEGALDRUGS_ALL="$KEYWORDS_ILLEGALDRUGS|$KEYWORDS_MARIJUANA|$KEYWORDS_COCAINE"
KEYWORDS_DRUGS_EXCLUDE="$KEYWORDS_MEDICATION|$KEYWORDS_ILLEGALDRUGS_ALL"

if [ "$1" == "" ];
then

  debug_start "Drugs"

  DRUGS=$(egrep -i "$KEYWORDS_DRUGS" newpages.txt | egrep -iv "$KEYWORDS_DRUGS_EXCLUDE")
  MEDICATION=$(egrep -i "$KEYWORDS_MEDICATION" newpages.txt)
  ILLEGAL=$(egrep -i "$KEYWORDS_ILLEGALDRUGS" newpages.txt | egrep -iv "$KEYWORDS_ILLEGALDRUGS_EXCLUDE")
  COCAINE=$(egrep -i "$KEYWORDS_COCAINE" newpages.txt)
  MARIJUANA=$(egrep -i "$KEYWORDS_MARIJUANA" newpages.txt)

  if [ "$DRUGS" != "" ];
  then
    printf "%s" "$DRUGS" > Drugs.txt
    export CATFILE="Drugs.txt"
    export CATNAME="Drugs"
    $CATEGORIZE
    rm Drugs.txt
    unset DRUGS
  fi

  if [ "$MEDICATION" != "" ];
  then
    printf "%s" "$MEDICATION" > Medication.txt
    export CATFILE="Medication.txt"
    export CATNAME="Medication"
    $CATEGORIZE
    rm Medication.txt
    unset MEDICATION
  fi

  if [ "$ILLEGAL" != "" ];
  then
    printf "%s" "$ILLEGAL" > IllegalDrugs.txt
    export CATFILE="IllegalDrugs.txt"
    export CATNAME="Illegal drugs"
    $CATEGORIZE
    rm IllegalDrugs.txt
    unset ILLEGAL
  fi

  if [ "$COCAINE" != "" ];
  then
    printf "%s" "$COCAINE" > Cocaine.txt
    export CATFILE="Cocaine.txt"
    export CATNAME="Cocaine"
    $CATEGORIZE
    rm Cocaine.txt
    unset COCAINE
  fi

  if [ "$MARIJUANA" != "" ];
  then
    printf "%s" "$MARIJUANA" > Marijuana.txt
    export CATFILE="Marijuana.txt"
    export CATNAME="Marijuana"
    $CATEGORIZE
    rm Marijuana.txt
    unset MARIJUANA
  fi

  debug_end "Drugs"

fi
