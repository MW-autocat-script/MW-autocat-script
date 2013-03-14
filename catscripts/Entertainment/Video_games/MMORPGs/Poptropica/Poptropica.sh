#!/bin/bash

egrep -i 'poptropica|potropica|poptopica' newpages.txt > Poptropica.txt

POPTROPICA=`stat --print=%s Poptropica.txt`

if [ $POPTROPICA -ne 0 ];
then
  export CATFILE="Poptropica.txt"
  export CATNAME="Poptropica"
  ./catscripts/Categorize.sh
fi

rm Poptropica.txt