#!/bin/bash

KEYWORDS_SONIC="Sonic(| )the(| )Hedgehog|Robotnik|Doctor(| )Eggman|(Miles|Tails)(| )(Prower|the(| )fox)|Metal(| )Sonic|Amy(| )Rose|Knuckles(| )the(| )Echidna|EggRobo|Nack(| )the(| )Weasel|Chaotix|Charmy(| )Bee|\bEspio(|s)\b|Mighty(| )the(| )Armadillo|Vector(| )the(| )Crocodile|Big(| )the(| )Cat|Omochao|Shadow(| )the(| )hedgehog|\bTikal(|s)\b|Rouge(| )the(| )Bat|Cream(| )the(| )Rabbit|Blaze(| )the(| )Cat|Silver(| )the(| )Hedgehog"
KEYWORDS_SONIC_SECONDARY="(Sonic|Eggman|Tails|Miles|Amy|Knuckles|\bNack|Charmy|Vector|Shadow|Rouge|Cream|Blaze|Silver).+(Sonic|Eggman|Tails|Miles|Amy|Knuckles|\bNack|Charmy|Vector|Shadow|Rouge|Cream|Blaze|Silver)"

egrep -i "$KEYWORDS_SONIC|$KEYWORDS_SONIC_SECONDARY" newpages.txt >> Sonic.txt

SONIC=`stat --print=%s Sonic.txt`

if [ $SONIC -ne 0 ];
then
  export CATFILE="Sonic.txt"
  export CATNAME="Sonic the Hedgehog franchise"
  $CATEGORIZE
fi

rm Sonic.txt