#!/bin/bash 

cat newpages.txt | egrep -i 'Mercury' | egrep -i 'atom|proton|neutron|electron|\bion|melt|boil|metal|vapor|magnet|element|compound|toxic|molecule|electricity|conduct' | egrep -iv 'planet Mercury' >> MercuryElement.txt
cat newpages.txt | egrep -i 'Zinc' >> Zinc.txt
cat newpages.txt | egrep -i 'Cadmium' >> Cadmium.txt
cat newpages.txt | egrep -i 'Copernicium' >> Copernicium.txt

MERCURY=`stat --print=%s MercuryElement.txt`
ZINC=`stat --print=%s Zinc.txt`
CADMIUM=`stat --print=%s Cadmium.txt`
COPERNICIUM=`stat --print=%s Copernicium.txt`

if [ $MERCURY -ne 0 ];
then
  export CATFILE="MercuryElement.txt"
  export CATNAME="Mercury (element)"
  ./catscripts/Categorize.sh
fi

if [ $ZINC -ne 0 ];
then
  export CATFILE="Zinc.txt"
  export CATNAME="Zinc"
  ./catscripts/Categorize.sh
fi

if [ $CADMIUM -ne 0 ];
then
  export CATFILE="Cadmium.txt"
  export CATNAME="Cadmium"
  ./catscripts/Categorize.sh
fi

if [ $COPERNICIUM -ne 0 ];
then
  export CATFILE="Copernicium.txt"
  export CATNAME="Copernicium"
  ./catscripts/Categorize.sh
fi

rm MercuryElement.txt
rm Zinc.txt
rm Cadmium.txt
rm Copernicium.txt