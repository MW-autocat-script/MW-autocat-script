#!/bin/bash 

egrep -i '\bIron\b|\bIrons\b|ferrous|ferric|ferrite' newpages.txt | egrep -iv 'Iron Age|Iron Man|irony|ironing|iron a\s|curling iron|RuneScape|Rune scape|iron curtain|ironworks|shirt|in irons|Iron Maiden|minecraft|Sacred Seasons|\bHalo\b|mhfu|monster hunter|kiteshield|kite shield|plateshield|square shield|platebody|plate body|steam iron|waffle iron|electric iron|2h sword|iron dragon|for a member|for members|Iron company|Iron island|zombie|yugioh|Yu-Gi-Oh|golem|Magic|flat iron|naruto|golf|club|[0-9]{1,}( |-)iron| I iron|full helm|\ban iron$|Mandalorian|Iron Chef|World of Warcraft|Wizard( |)101|Adventure(Quest| Quest)' >> Iron.txt
egrep -i 'Ruthenium' newpages.txt >> Ruthenium.txt
egrep -i 'Osmium' newpages.txt >> Osmium.txt
egrep -i 'Hassium' newpages.txt >> Hassium.txt

IRON=`stat --print=%s Iron.txt`
RUTHENIUM=`stat --print=%s Ruthenium.txt`
OSMIUM=`stat --print=%s Osmium.txt`
HASSIUM=`stat --print=%s Hassium.txt`

if [ $IRON -ne 0 ];
then
  export CATFILE="Iron.txt"
  export CATNAME="Iron"
  $CATEGORIZE
fi

if [ $RUTHENIUM -ne 0 ];
then
  export CATFILE="Ruthenium.txt"
  export CATNAME="Ruthenium"
  $CATEGORIZE
fi

if [ $OSMIUM -ne 0 ];
then
  export CATFILE="Osmium.txt"
  export CATNAME="Osmium"
  $CATEGORIZE
fi

if [ $HASSIUM -ne 0 ];
then
  export CATFILE="Hassium.txt"
  export CATNAME="Hassium"
  $CATEGORIZE
fi

rm Iron.txt
rm Ruthenium.txt
rm Osmium.txt
rm Hassium.txt