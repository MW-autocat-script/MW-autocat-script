#!/bin/bash 

cat newpages.txt | egrep -i 'Beryllium' | egrep -iv 'beryllium \b.+(ate|ide|ite)' >> Beryllium.txt
cat newpages.txt | egrep -i 'Magnesium' | egrep -iv 'Magnesium \b.+(ate|ide|ite)' >> Magnesium.txt
cat newpages.txt | egrep -i 'Calcium' | egrep -iv 'Calcium \b.+(ate|ide|ite)' >> Calcium.txt
cat newpages.txt | egrep -i 'Strontium' | egrep -iv 'Strontium \b.+(ate|ide|ite)' >> Strontium.txt
cat newpages.txt | egrep -i 'Barium' | egrep -iv 'Barium \b.+(ate|ide|ite)' >> Barium.txt
cat newpages.txt | egrep -i 'Radium' | egrep -iv 'Radium \b.+(ate|ide|ite)' >> Radium.txt

BERYLLIUM=`stat --print=%s Beryllium.txt`
MAGNESIUM=`stat --print=%s Magnesium.txt`
CALCIUM=`stat --print=%s Calcium.txt`
STRONTIUM=`stat --print=%s Strontium.txt`
BARIUM=`stat --print=%s Barium.txt`
RADIUM=`stat --print=%s Radium.txt`

if [ $BERYLLIUM -ne 0 ];
then
  export CATFILE="Beryllium.txt"
  export CATNAME="Beryllium"
  ./catscripts/Categorize.sh
fi

if [ $MAGNESIUM -ne 0 ];
then
  export CATFILE="Magnesium.txt"
  export CATNAME="Magnesium"
  ./catscripts/Categorize.sh
fi

if [ $CALCIUM -ne 0 ];
then
  export CATFILE="Calcium.txt"
  export CATNAME="Calcium"
  ./catscripts/Categorize.sh
fi

if [ $STRONTIUM -ne 0 ];
then
  export CATFILE="Strontium.txt"
  export CATNAME="Strontium"
  ./catscripts/Categorize.sh
fi

if [ $BARIUM -ne 0 ];
then
  export CATFILE="Barium.txt"
  export CATNAME="Barium"
  ./catscripts/Categorize.sh
fi

if [ $RADIUM -ne 0 ];
then
  export CATFILE="Radium.txt"
  export CATNAME="Radium"
  ./catscripts/Categorize.sh
fi

rm Beryllium.txt
rm Magnesium.txt
rm Calcium.txt
rm Strontium.txt
rm Barium.txt
rm Radium.txt