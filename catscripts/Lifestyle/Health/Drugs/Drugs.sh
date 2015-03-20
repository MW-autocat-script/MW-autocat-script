#!/bin/bash

KEYWORDS_DRUGS="drug(|s)\b"
KEYWORDS_MEDICATION="medication|prescription|ibuprofen|advil|tylenol|NSAID|asprin|Gynera\b|quinine|Abilify|aripiprazole|abiraterone|Zytiga|ablavar|gadofosveset|dysport|abobotulinumtoxin|Abraxane|Absorica|isotretinoin|Abstral|fentanyl|Campral|acamprosate|oxycontin|oxycodone|paclitaxel|Syndol|Adderall|Zyban\b|Wellbutrin|Voxra|Budeprion|Prexaton|Elontril|Aplenzin|Bupropion"
KEYWORDS_ILLEGALDRUGS="Illegal(| )drug|\bmeth\b|methamphetamine|\bLSD\b|methadone|heroin\b"
KEYWORDS_COCAINE="Cocaine|smoke(| )crack|crack(| )pipe"
KEYWORDS_MARIJUANA="marijuana|(buy|smoke|inhale).+(\bweed|pot\b|a joint)|cannabis|cannabinol"
KEYWORDS_ILLEGALDRUGS_EXCLUDE="$KEYWORDS_COCAINE|$KEYWORDS_MARIJUANA"
KEYWORDS_ILLEGALDRUGS_ALL="$KEYWORDS_ILLEGALDRUGS|$KEYWORDS_MARIJUANA|$KEYWORDS_COCAINE"
KEYWORDS_DRUGS_EXCLUDE="$KEYWORDS_MEDICATION|$KEYWORDS_ILLEGALDRUGS_ALL"

if [ "$1" == "" ];
then

  debug_start "Drugs"

  DRUGS=$(egrep -i "$KEYWORDS_DRUGS" "$NEWPAGES" | egrep -iv "$KEYWORDS_DRUGS_EXCLUDE")
  MEDICATION=$(egrep -i "$KEYWORDS_MEDICATION" "$NEWPAGES")
  ILLEGAL=$(egrep -i "$KEYWORDS_ILLEGALDRUGS" "$NEWPAGES" | egrep -iv "$KEYWORDS_ILLEGALDRUGS_EXCLUDE")
  COCAINE=$(egrep -i "$KEYWORDS_COCAINE" "$NEWPAGES")
  MARIJUANA=$(egrep -i "$KEYWORDS_MARIJUANA" "$NEWPAGES")

  categorize "DRUGS" "Drugs"
  categorize "MEDICATION" "Medication"
  categorize "ILLEGAL" "Illegal drugs"
  categorize "COCAINE" "Cocaine"
  categorize "MARIJUANA" "Marijuana"

  debug_end "Drugs"

fi
