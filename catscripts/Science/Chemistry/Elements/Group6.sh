#!/bin/bash 

cat newpages.txt | egrep -i 'Chromium' | egrep -iv 'internet|browser' >> Chromium.txt
cat newpages.txt | egrep -i 'Molybdenum' >> Molybdenum.txt
cat newpages.txt | egrep -i 'Tungsten' | egrep -iv 'Mass Effect' >> Tungsten.txt
cat newpages.txt | egrep -i 'Seaborgium' >> Seaborgium.txt

CHROMIUM=`stat --print=%s Chromium.txt`
MOLYBDENUM=`stat --print=%s Molybdenum.txt`
TUNGSTEN=`stat --print=%s Tungsten.txt`
SEABORGIUM=`stat --print=%s Seaborgium.txt`

if [ $CHROMIUM -ne 0 ];
then
  export CATFILE="Chromium.txt"
  export CATNAME="Chromium"
  ./catscripts/Categorize.sh
fi

if [ $MOLYBDENUM -ne 0 ];
then
  export CATFILE="Molybdenum.txt"
  export CATNAME="Molybdenum"
  ./catscripts/Categorize.sh
fi

if [ $TUNGSTEN -ne 0 ];
then
  export CATFILE="Tungsten.txt"
  export CATNAME="Tungsten"
  ./catscripts/Categorize.sh
fi

if [ $SEABORGIUM -ne 0 ];
then
  export CATFILE="Seaborgium.txt"
  export CATNAME="Seaborgium"
  ./catscripts/Categorize.sh
fi

rm Chromium.txt
rm Molybdenum.txt
rm Tungsten.txt
rm Seaborgium.txt