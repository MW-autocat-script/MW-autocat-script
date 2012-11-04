#!/bin/bash 

cat newpages.txt | egrep -i 'Cobalt' | egrep -iv 'Chevrolet|Chevy' >> Cobalt.txt
cat newpages.txt | egrep -i 'Rhodium' >> Rhodium.txt
cat newpages.txt | egrep -i 'Iridium' >> Iridium.txt
cat newpages.txt | egrep -i 'Meitnerium' >> Meitnerium.txt

COBALT=`stat --print=%s Cobalt.txt`
RHODIUM=`stat --print=%s Rhodium.txt`
IRIDIUM=`stat --print=%s Iridium.txt`
MEITNERIUM=`stat --print=%s Meitnerium.txt`

if [ $COBALT -ne 0 ];
then
  export CATFILE="Cobalt.txt"
  export CATNAME="Cobalt"
  ./catscripts/Categorize.sh
fi

if [ $RHODIUM -ne 0 ];
then
  export CATFILE="Rhodium.txt"
  export CATNAME="Rhodium"
  ./catscripts/Categorize.sh
fi

if [ $IRIDIUM -ne 0 ];
then
  export CATFILE="Iridium.txt"
  export CATNAME="Iridium"
  ./catscripts/Categorize.sh
fi

if [ $MEITNERIUM -ne 0 ];
then
  export CATFILE="Meitnerium.txt"
  export CATNAME="Meitnerium"
  ./catscripts/Categorize.sh
fi

rm Cobalt.txt
rm Rhodium.txt
rm Iridium.txt
rm Meitnerium.txt