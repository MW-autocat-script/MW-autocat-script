#!/bin/bash

KEYWORDS_SONIC="Sonic(| )the(| )Hedgehog|Robotnik|Doctor(| )Eggman|(Miles|Tails)(| )(Prower|the(| )fox)|Metal(| )Sonic|Amy(| )Rose|Knuckles(| )the(| )Echidna|EggRobo|Nack(| )the(| )Weasel|Chaotix|Charmy(| )Bee|\bEspio(|s)\b|Mighty(| )the(| )Armadillo|Vector(| )the(| )Crocodile|Big(| )the(| )Cat|Omochao|Shadow(| )the(| )hedgehog|\bTikal(|s)\b|Rouge(| )the(| )Bat|Cream(| )the(| )Rabbit|Blaze(| )the(| )Cat|Silver(| )the(| )Hedgehog"

KEYWORDS_SONIC_SECONDARY="(Sonic|Eggman|Tails|Miles|Amy|Knuckles|\bNack|Charmy|Vector|Shadow|Rouge|Cream|Blaze|Silver).+\b(Sonic|Eggman|Tails|Miles|Amy|Knuckles|\bNack|Charmy|Vector|Shadow|Rouge|Cream|Blaze|Silver)"

KEYWORDS_SONIC_EXCLUDE="(Pokemon|Poké)"

if [ "$1" == "" ];
then

  debug_start "Sonic the Hedgehog franchise"

  SONIC="$(egrep -i "$KEYWORDS_SONIC|$KEYWORDS_SONIC_SECONDARY" newpages.txt | egrep -iv "$KEYWORDS_SONIC_EXCLUDE")"

  if [ "$SONIC" != "" ];
  then
    printf "$SONIC" > Sonic.txt
    export CATFILE="Sonic.txt"
    export CATNAME="Sonic the Hedgehog franchise"
    $CATEGORIZE
    rm Sonic.txt
    unset SONIC
  fi

  debug_end "Sonic the Hedgehog franchise"

fi