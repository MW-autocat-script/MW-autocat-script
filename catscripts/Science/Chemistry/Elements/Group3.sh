#!/bin/bash 

cat newpages.txt | egrep -i 'Scandium' | egrep -iv 'Scandium \b.+(ate|ide|ite)' >> Scandium.txt
cat newpages.txt | egrep -i 'Yttrium' | egrep -iv 'Yttrium \b.+(ate|ide|ite)' >> Yttrium.txt

SCANDIUM=`stat --print=%s Scandium.txt`
YTTRIUM=`stat --print=%s Yttrium.txt`

if [ $SCANDIUM -ne 0 ];
then
  export CATFILE="Scandium.txt"
  export CATNAME="Scandium"
  ./catscripts/Categorize.sh
fi

if [ $YTTRIUM -ne 0 ];
then
  export CATFILE="Yttrium.txt"
  export CATNAME="Yttrium"
  ./catscripts/Categorize/sh
fi

rm Scandium.txt
rm Yttrium.txt