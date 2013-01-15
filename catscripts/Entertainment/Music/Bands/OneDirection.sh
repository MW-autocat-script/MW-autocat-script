#!/bin/bash

cat newpages.txt | egrep 'One Direction' > OneDirection.txt
cat newpages.txt | egrep -i 'Harry (|Edward) Style' > HarryStyles.txt
cat newpages.txt | egrep -i 'horan' > NiallHoran.txt
cat newpages.txt | egrep -i 'Zayn(| )Malik' > ZaynMalik.txt
cat newpages.txt | egrep -i 'Louis(| William) Tomlinson' > LouisTomlinson.txt
cat newpages.txt | egrep -i 'Liam(| James) Payne' > LiamPayne.txt

cat HarryStyles.txt NiallHoran.txt ZaynMalik.txt LouisTomlinson.txt LiamPayne >> OneDirection.txt

ONEDIRECTION=`stat --print=%s OneDirection.txt`

if [ $ONEDIRECTION -ne 0 ];
then
  export CATFILE="OneDirection.txt"
  export CATNAME="One Direction"
  ./catscripts/Categorize.sh
fi

rm OneDirection.txt
rm HarryStyles.txt
rm NiallHoran.txt
rm ZaynMalik.txt
rm LouisTomlinson.txt
rm LiamPayne.txt