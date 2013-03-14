#!/bin/bash
egrep -i 'Chev(rolet|y)(| )Aveo|[0-9]{2,}(| )Aveo' newpages.txt >> ChevroletAveo.txt
egrep -i 'Chev(rolet|y)(| )Beretta|[0-9]{2,}(| )Beretta' newpages.txt >> ChevroletBeretta.txt
egrep -i 'Camaro' newpages.txt >> ChevroletCamaro.txt
egrep -i 'Chev(rolet|y)(| )Caprice|[0-9]{2,}(| )Caprice' newpages.txt >> ChevroletCaprice.txt
egrep -i 'Chev(rolet|y)(| )Cavalier|[0-9]{2,}(| )Cavalier' newpages.txt >> ChevroletCavalier.txt

AVEO=`stat --print=%s ChevroletAveo.txt`
BERETTA=`stat --print=%s ChevroletBeretta.txt`
CAMARO=`stat --print=%s ChevroletCamaro.txt`
CAPRICE=`stat --print=%s ChevroletCaprice.txt`
CAVALIER=`stat --print=%s ChevroletCavalier.txt`

if [ $AVEO -ne 0 ];
then
  export CATFILE="ChevroletAveo.txt"
  export CATNAME="Chevrolet Aveo"
  $CATEGORIZE
fi

if [ $BERETTA -ne 0 ];
then
  export CATFILE="ChevroletBeretta.txt"
  export CATNAME="Chevrolet Beretta"
  $CATEGORIZE
fi

if [ $CAMARO -ne 0 ];
then
  export CATFILE="ChevroletCamaro.txt"
  export CATNAME="Chevrolet Camaro"
  $CATEGORIZE
fi

if [ $CAPRICE -ne 0 ];
then
  export CATFILE="ChevroletCaprice.txt"
  export CATNAME="Chevrolet Caprice"
  $CATEGORIZE
fi

if [ $CAVALIER -ne 0 ];
then
  export CATFILE="ChevroletCavalier.txt"
  export CATNAME="Chevrolet Cavalier"
  $CATEGORIZE
fi

rm ChevroletAveo.txt
rm ChevroletBeretta.txt
rm ChevroletCamaro.txt
rm ChevroletCaprice.txt
rm ChevroletCavalier.txt