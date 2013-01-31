#!/bin/bash 

cat newpages.txt | egrep -i 'Titanium' | egrep -iv 'Titanium \b.+(ate|ide|ite)|blade|toy|katar|lego|muffler|runed titanium' >> Titanium.txt
cat newpages.txt | egrep -i 'Zirconium' | egrep -iv 'Zirconium \b.+(ate|ide|ite)' >> Zirconium.txt
cat newpages.txt | egrep -i 'Hafnium' >> Hafnium.txt
cat newpages.txt | egrep -i 'Rutherfordium' >> Rutherfordium.txt

TITANIUM=`stat --print=%s Titanium.txt`
ZIRCONIUM=`stat --print=%s Zirconium.txt`
HAFNIUM=`stat --print=%s Hafnium.txt`
RUTHERFORDIUM=`stat --print=%s Rutherfordium.txt`

if [ $TITANIUM -ne 0 ];
then
  export CATFILE="Titanium.txt"
  export CATNAME="Titanium"
  ./catscripts/Categorize.sh
fi

if [ $ZIRCONIUM -ne 0 ];
then
  export CATFILE="Zirconium.txt"
  export CATNAME="Zirconium"
  ./catscripts/Categorize.sh
fi

if [ $HAFNIUM -ne 0 ];
then
  export CATFILE="Hafnium.txt"
  export CATNAME="Hafnium"
  ./catscripts/Categorize.sh
fi

if [ $RUTHERFORDIUM -ne 0 ];
then
  export CATFILE="Rutherfordium.txt"
  export CATNAME="Rutherfordium"
  ./catscripts/Categorize.sh
fi

rm Titanium.txt
rm Zirconium.txt
rm Hafnium.txt
rm Rutherfordium.txt