#!/bin/bash

cat newpages.txt | egrep -i 'Lanthanum' >>  Lanthanum.txt
cat newpages.txt | egrep -i 'Cerium' >> Cerium.txt
cat newpages.txt | egrep -i 'Praseodymium' >>  Praseodymium.txt
cat newpages.txt | egrep -i 'Neodymium' >> Neodymium.txt
cat newpages.txt | egrep -i 'Promethium' >> Promethium.txt
cat newpages.txt | egrep -i 'Samarium' >> Samarium.txt
cat newpages.txt | egrep -i 'Europium' >> Europium.txt
cat newpages.txt | egrep -i 'Gadolinium' >> Gadolinium.txt
cat newpages.txt | egrep -i '\bTerbium' >> Terbium.txt
cat newpages.txt | egrep -i 'Dysprosium' >> Dysprosium.txt
cat newpages.txt | egrep -i 'Holmium' >> Holmium.txt
cat newpages.txt | egrep -i '\bErbium' >> Erbium.txt
cat newpages.txt | egrep -i 'Thulium' >> Thulium.txt
cat newpages.txt | egrep -i 'Ytterbium' >> Ytterbium.txt
cat newpages.txt | egrep -i 'Lutetium' >> Lutetium.txt

LANTHANUM=`stat --print=%s Lanthanum.txt`
CERIUM=`stat --print=%s Cerium.txt`
PRASEODYMIUM=`stat --print=%s Praseodymium.txt`
NEODYMIUM=`stat --print=%s Neodymium.txt`
PROMETHIUM=`stat --print=%s Promethium.txt`
SAMARIUM=`stat --print=%s Samarium.txt`
EUROPIUM=`stat --print=%s Europium.txt`
GADOLINIUM=`stat --print=%s Gadolinium.txt`
TERBIUM=`stat --print=%s Terbium.txt`
DYSPROSIUM=`stat --print=%s Dysprosium.txt`
HOLMIUM=`stat --print=%s Holmium.txt`
ERBIUM=`stat --print=%s Erbium.txt`
THULIUM=`stat --print=%s Thulium.txt`
YTTERBIUM=`stat --print=%s Ytterbium.txt`
LUTETIUM=`stat --print=%s Lutetium.txt`

if [ $LANTHANUM -ne 0 ] ;
then
   export CATFILE="Lanthanum.txt"
   export CATNAME="Lanthanum"
   ./catscripts/Categorize.sh
fi

if [ $CERIUM -ne 0 ] ;
then
   export CATFILE="Cerium.txt"
   export CATNAME="Cerium"
   ./catscripts/Categorize.sh
fi

if [ $PRASEODYMIUM -ne 0 ] ;
then
   export CATFILE="Praseodymium.txt"
   export CATNAME="Praseodymium"
   ./catscripts/Categorize.sh
fi

if [ $NEODYMIUM -ne 0 ] ;
then
   export CATFILE="Neodymium.txt"
   export CATNAME="Neodymium"
   ./catscripts/Categorize.sh
fi

if [ $PROMETHIUM -ne 0 ] ;
then
   export CATFILE="Promethium.txt"
   export CATNAME="Promethium"
   ./catscripts/Categorize.sh
fi

if [ $SAMARIUM -ne 0 ] ;
then
   export CATFILE="Samarium.txt"
   export CATNAME="Samarium"
   ./catscripts/Categorize.sh
fi

if [ $EUROPIUM -ne 0 ] ;
then
   export CATFILE="Europium.txt"
   export CATNAME="Europium"
   ./catscripts/Categorize.sh
fi

if [ $GADOLINIUM -ne 0 ] ;
then
   export CATFILE="Gadolinium.txt"
   export CATNAME="Gadolinium"
   ./catscripts/Categorize.sh
fi

if [ $TERBIUM -ne 0 ] ;
then
   export CATFILE="Terbium.txt"
   export CATNAME="Terbium"
   ./catscripts/Categorize.sh
fi

if [ $DYSPROSIUM -ne 0 ] ;
then
   export CATFILE="Dysprosium.txt"
   export CATNAME="Dysprosium"
   ./catscripts/Categorize.sh
fi

if [ $HOLMIUM -ne 0 ] ;
then
   export CATFILE="Holmium.txt"
   export CATNAME="Holmium"
   ./catscripts/Categorize.sh
fi

if [ $ERBIUM -ne 0 ] ;
then
   export CATFILE="Erbium.txt"
   export CATNAME="Erbium"
   ./catscripts/Categorize.sh
fi

if [ $THULIUM -ne 0 ] ;
then
   export CATFILE="Thulium.txt"
   export CATNAME="Thulium"
   ./catscripts/Categorize.sh
fi

if [ $YTTERBIUM -ne 0 ] ;
then
   export CATFILE="Ytterbium.txt"
   export CATNAME="Ytterbium"
   ./catscripts/Categorize.sh
fi

if [ $LUTETIUM -ne 0 ] ;
then
   export CATFILE="Lutetium.txt"
   export CATNAME="Lutetium"
   ./catscripts/Categorize.sh
fi

rm Lanthanum.txt
rm Cerium.txt
rm Praseodymium.txt
rm Neodymium.txt
rm Promethium.txt
rm Samarium.txt
rm Europium.txt
rm Gadolinium.txt
rm Terbium.txt
rm Dysprosium.txt
rm Holmium.txt
rm Erbium.txt
rm Thulium.txt
rm Ytterbium.txt
rm Lutetium.txt