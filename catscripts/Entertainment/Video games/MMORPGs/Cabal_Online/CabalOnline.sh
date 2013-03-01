#!/bin/bash

egrep -i 'Cabal(| )Online|Altar of Karion' newpages.txt >> CabalOnline.txt

CABAL=`stat --print=%s CabalOnline.txt`

if [ $CABAL -ne 0 ];
then
  export CATFILE="CabalOnline.txt"
  export CATNAME="Cabal Online"
  ./catscripts/Categorize.sh
fi

rm CabalOnline.txt