#!/bin/bash

egrep -i 'Costa(| )Rica' newpages.txt >> CostaRica.txt

COSTARICA=`stat --print=%s CostaRica.txt`

if [ $COSTARICA -ne 0 ];
then
  export CATFILE="CostaRica.txt"
  export CATNAME="Costa Rica"
  $CATEGORIZE
fi

rm CostaRica.txt