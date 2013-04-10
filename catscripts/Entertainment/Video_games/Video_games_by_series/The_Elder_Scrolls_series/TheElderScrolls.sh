#!/bin/bash

egrep -i 'The(| )Elder(| )Scrolls' newpages.txt | egrep -iv 'skyrim|oblivion' >> TheElderScrolls.txt
egrep -i 'Skyrim' newpages.txt >> Skyrim.txt
egrep -i 'The Elder Scrolls.+Oblivion|\b(i|o)n Oblivion' newpages.txt >> Oblivion.txt

SCROLLS=`stat --print=%s TheElderScrolls.txt`
SKYRIM=`stat --print=%s Skyrim.txt`
OBLIVION=`stat --print=%s Oblivion.txt`

if [ $SCROLLS -ne 0 ];
then
  export CATFILE="TheElderScrolls.txt"
  export CATNAME="The Elder Scrolls series"
  $CATEGORIZE
fi

if [ $SKYRIM -ne 0 ];
then
  export CATFILE="Skyrim.txt"
  export CATNAME="The Elder Scrolls V: Skyrim"
  $CATEGORIZE
fi

if [ $OBLIVION -ne 0 ];
then
  export CATFILE="Oblivion.txt"
  export CATNAME="The Elder Scrolls IV: Oblivion
  $CATEGORIZE
fi

rm Scrolls.txt
rm Skyrim.txt
rm Oblivion.txt