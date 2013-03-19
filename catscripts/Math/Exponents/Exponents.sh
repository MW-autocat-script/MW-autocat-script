#!/bin/bash

egrep -i 'exponent|[0-9]{1,} to the (-|)[0-9]{1,} power|\^[0-9]{1,}' newpages.txt >> Exponents.txt

EXPONENTS=`stat --print=%s Exponents.txt`

if [ $EXPONENTS -ne 0 ];
then
  export CATFILE="Exponents.txt"
  export CATNAME="Exponents"
  $CATEGORIZE
fi

rm Exponents.txt