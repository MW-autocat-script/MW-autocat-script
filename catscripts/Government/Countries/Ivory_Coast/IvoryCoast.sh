#!/bin/bash

egrep -i "Ivory(| )Coast|Côte d'Ivoire" newpages.txt >> IvoryCoast.txt

IVORYCOAST=`stat --print=%s IvoryCoast.txt`

if [ $IVORYCOAST -ne 0 ];
then
  export CATFILE="IvoryCoast.txt"
  export CATNAME="Côte d'Ivoire"
  $CATEGORIZE
fi

rm IvoryCoast.txt