#!/bin/bash

egrep -i 'Barbados|Barbadoan' newpages.txt >> Barbados.txt

BARBADOS=`stat --print=%s Barbados.txt`

if [ $BARBADOS -ne 0 ];
then
  export CATFILE="Barbados.txt"
  export CATNAME="Barbados"
  ./catscripts/Categorize.sh
fi

rm Barbados.txt