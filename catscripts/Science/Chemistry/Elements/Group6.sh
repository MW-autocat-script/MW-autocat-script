#!/bin/bash 

egrep -i 'Chromium' newpages.txt | egrep -iv 'internet|browser' >> Chromium.txt
egrep -i 'Molybdenum' newpages.txt >> Molybdenum.txt
egrep -i 'Tungsten' newpages.txt | egrep -iv 'Mass Effect' >> Tungsten.txt
egrep -i 'Seaborgium' newpages.txt >> Seaborgium.txt

CHROMIUM=`stat --print=%s Chromium.txt`
MOLYBDENUM=`stat --print=%s Molybdenum.txt`
TUNGSTEN=`stat --print=%s Tungsten.txt`
SEABORGIUM=`stat --print=%s Seaborgium.txt`

if [ $CHROMIUM -ne 0 ];
then
  export CATFILE="Chromium.txt"
  export CATNAME="Chromium"
  $CATEGORIZE
fi

if [ $MOLYBDENUM -ne 0 ];
then
  export CATFILE="Molybdenum.txt"
  export CATNAME="Molybdenum"
  $CATEGORIZE
fi

if [ $TUNGSTEN -ne 0 ];
then
  export CATFILE="Tungsten.txt"
  export CATNAME="Tungsten"
  $CATEGORIZE
fi

if [ $SEABORGIUM -ne 0 ];
then
  export CATFILE="Seaborgium.txt"
  export CATNAME="Seaborgium"
  $CATEGORIZE
fi

rm Chromium.txt
rm Molybdenum.txt
rm Tungsten.txt
rm Seaborgium.txt