#!/bin/bash

cat newpages.txt | egrep -i 'as a fraction\]\]' > Fractions.txt
cat newpages.txt | egrep -i 'in simplest form\]\]' >> Fractions.txt
cat newpages.txt | egrep -i 'in its simplest form\]\]' >> Fractions.txt
cat newpages.txt | egrep -i '[0-9]{1,}/[0-9]{1,} of [0-9]{1,}' >> Fractions.txt

FRACTIONS=`stat --print=%s Fractions.txt`

if [ $FRACTIONS -ne 0 ];
then
  export CATFILE="Fractions.txt"
  export CATNAME="Fractions"
  ./catscripts/Categorize.sh
fi