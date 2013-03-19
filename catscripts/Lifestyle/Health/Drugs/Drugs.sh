#!/bin/bash

egrep -i 'drug(|s)\b' newpages.txt | egrep -iv 'prescription|illegal|meth|marijuana|weed|cocaine|crack|heroin|methadone|speed' >> Drugs.txt

DRUGS=`stat --print=%s Drugs.txt`

if [ $DRUGS -ne 0 ];
then
  export CATFILE="Drugs.txt"
  export CATNAME="Drugs"
  $CATEGORIZE
fi

rm Drugs.txt