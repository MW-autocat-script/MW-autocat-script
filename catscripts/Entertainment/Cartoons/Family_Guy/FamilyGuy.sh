#!/bin/bash

egrep -i 'Family Guy|Peter Griffin|Lois Griffin|Meg Griffin|Chris Griffin|Stewie Griffin|Brian Griffin' newpages.txt >> FamilyGuy.txt

FAMILYGUY=$(stat --print=%s FamilyGuy.txt)

if [ $FAMILYGUY -ne 0 ];
then
  export CATFILE="FamilyGuy.txt"
  export CATNAME="Family Guy"
  $CATEGORIZE
fi

rm FamilyGuy.txt