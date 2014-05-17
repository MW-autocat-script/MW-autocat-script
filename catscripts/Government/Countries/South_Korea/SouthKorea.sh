#!/bin/bash

egrep -i 'South Korea|Seoul' newpages.txt >> SouthKorea.txt
egrep -i 'Korea\b' newpages.txt | egrep -iv 'North(| )Korea' >> SouthKorea.txt #Questions that ask about "Korea" are probably referring to South Korea

SKOREA=$(stat --print=%s SouthKorea.txt)

if [ $SKOREA -ne 0 ];
then
  export CATFILE="SouthKorea.txt"
  export CATNAME="South Korea"
  $CATEGORIZE
fi

rm SouthKorea.txt