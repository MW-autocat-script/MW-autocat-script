#!/bin/bash

egrep -i 'The Sims 2|Sims 2|Sims2' newpages.txt >> TheSims2.txt
egrep -i 'The Sims 3|Sims 3|Sims3' newpages.txt >> TheSims3.txt
egrep -i 'MySims|The Sims Wii' newpages.txt >> MySims.txt
egrep -i 'The Sims' newpages.txt | egrep -iv 'Sims 2|Sims2|Sims 3|Sims3|Sims Wii|Simswii' >> TheSimsSeries.txt

SIMS2=`stat --print=%s TheSims2.txt`
SIMS3=`stat --print=%s TheSims3.txt`
MYSIMS=`stat --print=%s MySims.txt`
SERIES=`stat --print=%s TheSimsSeries.txt`

if [ $SIMS2 -ne 0 ];
then
  export CATFILE="TheSims2.txt"
  export CATNAME="The Sims 2"
  ./catscripts/Categorize.sh
fi

if [ $SIMS3 -ne 0 ];
then
  export CATFILE="TheSims3.txt"
  export CATNAME="The Sims 3"
  ./catscripts/Categorize.sh
fi

if [ $MYSIMS -ne 0 ];
then
  export CATFILE="MySims.txt"
  export CATNAME="MySims"
  ./catscripts/Categorize.sh
fi

if [ $SERIES -ne 0 ];
then
  export CATFILE="TheSimsSeries.txt"
  export CATNAME="The Sims series"
  ./catscripts/Categorize.sh
fi

rm TheSims2.txt
rm TheSims3.txt
rm MySims.txt
rm TheSimsSeries.txt