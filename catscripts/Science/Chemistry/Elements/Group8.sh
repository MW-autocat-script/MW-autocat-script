#!/bin/bash 

cat newpages.txt | egrep -i '\bIron\b|\bIrons\b|ferrous|ferric|ferrite' | egrep -iv 'Iron Age|Iron Man|irony|ironing|iron a\s|curling iron|RuneScape|Rune scape|iron curtain|ironworks|shirt|in irons|Iron Maiden|minecraft|Sacred Seasons|\bHalo\b|mhfu|monster hunter|kiteshield|kite shield|plateshield|square shield|platebody|plate body|steam iron|waffle iron|electric iron|2h sword|iron dragon|for a member|for members|Iron company|Iron island|zombie|yugioh|Yu-Gi-Oh|golem|Magic|flat iron|naruto|golf|club|[0-9]{1,}( |-)iron| I iron|full helm|\ban iron\]\]|Mandalorian|Iron Chef|World of Warcraft|Wizard( |)101|Adventure(Quest| Quest)'
cat newpages.txt | egrep -i 'Ruthenium' >> Ruthenium.txt
cat newpages.txt | egrep -i 'Osmium' >> Osmium.txt
cat newpages.txt | egrep -i 'Hassium' >> Hassium.txt

IRON=`stat --print=%s Iron.txt`
RUTHENIUM=`stat --print=%s Ruthenium.txt`
OSMIUM=`stat --print=%s Osmium.txt`
HASSIUM=`stat --print=%s Hassium.txt`

if [ $IRON -ne 0 ];
then
  export CATFILE="Iron.txt"
  export CATNAME="Iron"
  ./catscripts/Categorize.sh
fi

if [ $RUTHENIUM -ne 0 ];
then
  export CATFILE="Ruthenium.txt"
  export CATNAME="Ruthenium"
  ./catscripts/Categorize.sh
fi

if [ $OSMIUM -ne 0 ];
then
  export CATFILE="Osmium.txt"
  export CATNAME="Osmium"
  ./catscripts/Categorize.sh
fi

if [ $HASSIUM -ne 0 ];
then
  export CATFILE="Hassium.txt"
  export CATNAME="Hassium"
  ./catscripts/Categorize.sh
fi

rm Iron.txt
rm Ruthenium.txt
rm Osmium.txt
rm Hassium.txt