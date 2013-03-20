#!/bin/bash

egrep -i 'Italy' newpages.txt | egrep -iv 'Rome|Pompeii|Pisa' >> Italy.txt 
egrep -i '\bRome' newpages.txt | egrep -iv 'Ancient Rome' >> Rome.txt
egrep -i 'Ancient Rome|Romans|Roman times|Julius Caesar|Augustus Caesar|Emperor Nero|Caligula' newpages.txt | egrep -iv 'Book of Romans|Romans [0-9]{1,}\:[0-9]{1,}' >> AncientRome.txt #Exclude biblical book
egrep -i 'Pisa' newpages.txt >> Pisa.txt
egrep -i 'Pompeii' newpages.txt >> Pompeii.txt

ITALY=`stat --print=%s Italy.txt`
ROME=`stat --print=%s Rome.txt`
ANCIENTROME=`stat --print=%s AncientRome.txt`
PISA=`stat --print=%s Pisa.txt`
POMPEII=`stat --print=%s Pompeii.txt`

if [ $ITALY -ne 0 ];
then
  export CATFILE="Italy.txt"
  export CATNAME="Italy"
  $CATEGORIZE
fi

if [ $ROME -ne 0 ];
then
  export CATFILE="Rome.txt"
  export CATNAME="Rome"
  $CATEGORIZE
fi

if [ $ANCIENTROME -ne 0 ];
then
  export CATFILE="AncientRome.txt"
  export CATNAME="Ancient Rome"
  $CATEGORIZE
fi

if [ $PISA -ne 0 ];
then
  export CATFILE="Pisa.txt"
  export CATNAME="Pisa, Italy"
  $CATEGORIZE
fi

if [ $POMPEII -ne 0 ];
then
  export CATFILE="Pompeii.txt"
  export CATNAME="Pompeii"
  $CATEGORIZE
fi

rm Italy.txt
rm Rome.txt
rm AncientRome.txt
rm Pisa.txt