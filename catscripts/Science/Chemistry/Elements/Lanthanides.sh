#!/bin/bash

egrep -i 'Lanthanum' newpages.txt >>  Lanthanum.txt
egrep -i 'Cerium' newpages.txt >> Cerium.txt
egrep -i 'Praseodymium' newpages.txt >>  Praseodymium.txt
egrep -i 'Neodymium' newpages.txt >> Neodymium.txt
egrep -i 'Promethium' newpages.txt >> Promethium.txt
egrep -i 'Samarium' newpages.txt >> Samarium.txt
egrep -i 'Europium' newpages.txt >> Europium.txt
egrep -i 'Gadolinium' newpages.txt >> Gadolinium.txt
egrep -i '\bTerbium' newpages.txt >> Terbium.txt
egrep -i 'Dysprosium' newpages.txt >> Dysprosium.txt
egrep -i 'Holmium' newpages.txt >> Holmium.txt
egrep -i '\bErbium' newpages.txt >> Erbium.txt
egrep -i 'Thulium' newpages.txt >> Thulium.txt
egrep -i 'Ytterbium' newpages.txt >> Ytterbium.txt
egrep -i 'Lutetium' newpages.txt >> Lutetium.txt

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
   $CATEGORIZE
fi

if [ $CERIUM -ne 0 ] ;
then
   export CATFILE="Cerium.txt"
   export CATNAME="Cerium"
   $CATEGORIZE
fi

if [ $PRASEODYMIUM -ne 0 ] ;
then
   export CATFILE="Praseodymium.txt"
   export CATNAME="Praseodymium"
   $CATEGORIZE
fi

if [ $NEODYMIUM -ne 0 ] ;
then
   export CATFILE="Neodymium.txt"
   export CATNAME="Neodymium"
   $CATEGORIZE
fi

if [ $PROMETHIUM -ne 0 ] ;
then
   export CATFILE="Promethium.txt"
   export CATNAME="Promethium"
   $CATEGORIZE
fi

if [ $SAMARIUM -ne 0 ] ;
then
   export CATFILE="Samarium.txt"
   export CATNAME="Samarium"
   $CATEGORIZE
fi

if [ $EUROPIUM -ne 0 ] ;
then
   export CATFILE="Europium.txt"
   export CATNAME="Europium"
   $CATEGORIZE
fi

if [ $GADOLINIUM -ne 0 ] ;
then
   export CATFILE="Gadolinium.txt"
   export CATNAME="Gadolinium"
   $CATEGORIZE
fi

if [ $TERBIUM -ne 0 ] ;
then
   export CATFILE="Terbium.txt"
   export CATNAME="Terbium"
   $CATEGORIZE
fi

if [ $DYSPROSIUM -ne 0 ] ;
then
   export CATFILE="Dysprosium.txt"
   export CATNAME="Dysprosium"
   $CATEGORIZE
fi

if [ $HOLMIUM -ne 0 ] ;
then
   export CATFILE="Holmium.txt"
   export CATNAME="Holmium"
   $CATEGORIZE
fi

if [ $ERBIUM -ne 0 ] ;
then
   export CATFILE="Erbium.txt"
   export CATNAME="Erbium"
   $CATEGORIZE
fi

if [ $THULIUM -ne 0 ] ;
then
   export CATFILE="Thulium.txt"
   export CATNAME="Thulium"
   $CATEGORIZE
fi

if [ $YTTERBIUM -ne 0 ] ;
then
   export CATFILE="Ytterbium.txt"
   export CATNAME="Ytterbium"
   $CATEGORIZE
fi

if [ $LUTETIUM -ne 0 ] ;
then
   export CATFILE="Lutetium.txt"
   export CATNAME="Lutetium"
   $CATEGORIZE
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