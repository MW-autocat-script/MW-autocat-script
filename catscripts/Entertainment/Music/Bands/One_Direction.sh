#!/bin/bash

egrep 'One Direction' newpages.txt >> OneDirection.txt
egrep -i 'Harry (|Edward) Style' newpages.txt >> HarryStyles.txt
egrep -i 'horan' newpages.txt >> NiallHoran.txt
egrep -i 'Zayn(| )Malik' newpages.txt >> ZaynMalik.txt
egrep -i 'Louis(| William) Tomlinson' newpages.txt >> LouisTomlinson.txt
egrep -i 'Liam(| James) Payne' newpages.txt >> LiamPayne.txt

cat HarryStyles.txt NiallHoran.txt ZaynMalik.txt LouisTomlinson.txt LiamPayne.txt >> OneDirection.txt

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