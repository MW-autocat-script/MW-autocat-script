#!/bin/bash

egrep -i 'as a fraction\]\]|into a fraction\]\]' newpages.txt > Fractions.txt
egrep -i 'in simplest form\]\]' newpages.txt >> Fractions.txt
egrep -i 'in its simplest form\]\]' newpages.txt >> Fractions.txt
egrep -i 'simplest form of [0-9]{1,}/[0-9]{1,}' newpages.txt >> Fractions.txt
egrep -i '[0-9]{1,}/[0-9]{1,} of [0-9]{1,}' newpages.txt >> Fractions.txt

FRACTIONS=`stat --print=%s Fractions.txt`

if [ $FRACTIONS -ne 0 ];
then
  export CATFILE="Fractions.txt"
  export CATNAME="Fractions"
  ./catscripts/Categorize.sh
fi

rm Fractions.txt