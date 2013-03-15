#!/bin/bash 

egrep -i 'Titanium' newpages.txt | egrep -iv 'Titanium \b.+(ate|ide|ite)|blade|toy|katar|lego|muffler|runed titanium' >> Titanium.txt
egrep -i 'Zirconium' newpages.txt | egrep -iv 'Zirconium \b.+(ate|ide|ite)' >> Zirconium.txt
egrep -i 'Hafnium' newpages.txt >> Hafnium.txt
egrep -i 'Rutherfordium' newpages.txt >> Rutherfordium.txt

TITANIUM=`stat --print=%s Titanium.txt`
ZIRCONIUM=`stat --print=%s Zirconium.txt`
HAFNIUM=`stat --print=%s Hafnium.txt`
RUTHERFORDIUM=`stat --print=%s Rutherfordium.txt`

if [ $TITANIUM -ne 0 ];
then
  export CATFILE="Titanium.txt"
  export CATNAME="Titanium"
  $CATEGORIZE
fi

if [ $ZIRCONIUM -ne 0 ];
then
  export CATFILE="Zirconium.txt"
  export CATNAME="Zirconium"
  $CATEGORIZE
fi

if [ $HAFNIUM -ne 0 ];
then
  export CATFILE="Hafnium.txt"
  export CATNAME="Hafnium"
  $CATEGORIZE
fi

if [ $RUTHERFORDIUM -ne 0 ];
then
  export CATFILE="Rutherfordium.txt"
  export CATNAME="Rutherfordium"
  $CATEGORIZE
fi

rm Titanium.txt
rm Zirconium.txt
rm Hafnium.txt
rm Rutherfordium.txt