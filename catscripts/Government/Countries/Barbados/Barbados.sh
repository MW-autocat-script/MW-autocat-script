#!/bin/bash

egrep -i 'Barbados|Barbadoan' newpages.txt >> Barbados.txt

BARBADOS=`stat --print=%s Barbados.txt`

if [ $BARBADOS -ne 0 ];
then
  export CATFILE="Barbados.txt"
  export CATNAME="Barbados"
  $CATEGORIZE
fi

rm Barbados.txt