#!/bin/bash

KEYWORDS_SKYRIM="Skyrim|Elder Scrolls (Five|5|V)\b"
KEYWORDS_OBLIVION="The Elder Scrolls.+Oblivion|\b(i|o)n Oblivion|Elder Scrolls (Four|IV|4)\b"

egrep -i 'The(| )Elder(| )Scrolls' newpages.txt | egrep -iv "$KEYWORDS_OBLIVION|$KEYWORDS_SKYRIM" > TheElderScrolls.txt
egrep -i "$KEYWORDS_SKYRIM" newpages.txt >> Skyrim.txt
egrep -i "$KEYWORDS_OBLIVION" newpages.txt >> Oblivion.txt

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
  export CATNAME="The Elder Scrolls IV: Oblivion"
  $CATEGORIZE
fi

rm TheElderScrolls.txt
rm Skyrim.txt
rm Oblivion.txt