#!/bin/bash

egrep -i 'Chev(rolet|y)(| )Aveo|[0-9]{1,}(| )Aveo' newpages.txt >> ChevroletAveo.txt
egrep -i 'Chev(rolet|y)(| )Beretta|[0-9]{1,}(| )Beretta' newpages.txt >> ChevroletBeretta.txt
egrep -i 'Camaro' newpages.txt >> ChevroletCamaro.txt

AVEO=`stat --print=%s ChevroletAveo.txt`
BERETTA=`stat --print=%s ChevroletBeretta.txt`
CAMARO=`stat --print=%s ChevroletCamaro.txt`

if [ $AVEO -ne 0 ];
then
  export CATFILE="ChevroletAveo.txt"
  export CATNAME="Chevrolet Aveo"
  ./catscripts/Categorize.sh
fi

if [ $BERETTA -ne 0 ];
then
  export CATFILE="ChevroletBeretta.txt"
  export CATNAME="Chevrolet Beretta"
  ./catscripts/Categorize.sh
fi

if [ $CAMARO -ne 0 ];
then
  export CATFILE="ChevroletCamaro.txt"
  export CATNAME="Chevrolet Camaro"
  ./catscripts/Categorize.sh
fi

rm ChevroletAveo.txt
rm ChevroletBeretta.txt
rm ChevroletCamaro.txt