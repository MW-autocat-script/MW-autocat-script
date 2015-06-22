#!/bin/bash

KEYWORDS_DRUGS="drug(|s)\b"
KEYWORDS_NSAID="NSAID|ibuprofen|acetaminophen|advil|tylenol|asp(|i)rin"
KEYWORDS_MEDICATION="medication|prescription|$KEYWORDS_NSAID|Gynera\b|quinine|Abilify|aripiprazole|abiraterone|Zytiga|ablavar|gadofosveset|dysport|abobotulinumtoxin|Abraxane|Absorica|isotretinoin|Abstral|fentanyl|Campral|acamprosate|oxycontin|oxycodone|paclitaxel|Syndol|Adderall|Zyban\b|Wellbutrin|Voxra|Budeprion|Prexaton|Elontril|Aplenzin|Bupropion"
KEYWORDS_ILLEGALDRUGS="Illegal(| )drug|\bmeth\b|methamphetamine|\bLSD\b|methadone|heroin\b"
KEYWORDS_COCAINE="Cocaine|smoke(| )crack|crack(| )pipe"
KEYWORDS_MARIJUANA="marijuana|(buy|smoke|inhale).+(\bweed|pot\b|a joint)|cannabis|cannabinol"
KEYWORDS_SALVIA="Salvia"
KEYWORDS_SALVIA_EXCLUDE="Salvia(| )officinalis"
KEYWORDS_ILLEGALDRUGS_EXCLUDE="$KEYWORDS_COCAINE|$KEYWORDS_MARIJUANA|$KEYWORDS_SALVIA"
KEYWORDS_ILLEGALDRUGS_ALL="$KEYWORDS_ILLEGALDRUGS|$KEYWORDS_MARIJUANA|$KEYWORDS_COCAINE|$KEYWORDS_SALVIA"
KEYWORDS_DRUGS_EXCLUDE="$KEYWORDS_MEDICATION|$KEYWORDS_ILLEGALDRUGS_ALL"

if [ "$1" == "" ];
then

  debug_start "Drugs"

  DRUGS=$(egrep -i "$KEYWORDS_DRUGS" "$NEWPAGES" | egrep -iv "$KEYWORDS_DRUGS_EXCLUDE")

  categorize "DRUGS" "Drugs"

  MEDICATION=$(egrep -i "$KEYWORDS_MEDICATION" "$NEWPAGES")

  categorize "MEDICATION" "Medication"

  ILLEGAL=$(egrep -i "$KEYWORDS_ILLEGALDRUGS" "$NEWPAGES" | egrep -iv "$KEYWORDS_ILLEGALDRUGS_EXCLUDE")

  categorize "ILLEGAL" "Illegal drugs"

  COCAINE=$(egrep -i "$KEYWORDS_COCAINE" "$NEWPAGES")

  categorize "COCAINE" "Cocaine"

  MARIJUANA=$(egrep -i "$KEYWORDS_MARIJUANA" "$NEWPAGES")

  categorize "MARIJUANA" "Marijuana"

  SALVIA=$(egrep -i "$KEYWORDS_SALVIA" "$NEWPAGES" | egrep -iv "$KEYWORDS_SALVIA_EXCLUDE")

  categorize "SALVIA" "Salvia" 

  debug_end "Drugs"

fi
