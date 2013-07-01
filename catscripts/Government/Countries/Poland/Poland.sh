#!/bin/bash

KEYWORDS_POLAND="Poland"
KEYWORDS_WARSAW="Warsaw"
KEYWORDS_AUSCHWITZ="Auschwitz|Oświęcim"

egrep -i "$KEYWORDS_POLAND" newpages.txt | egrep -iv "$KEYWORDS_AUSCHWITZ|$KEYWORDS_WARSAW" >> Poland.txt
egrep -i "$KEYWORDS_WARSAW" newpages.txt >> Warsaw.txt
egrep -i "$KEYWORDS_AUSCHWITZ" newpages.txt >> Auschwitz.txt

POLAND=`stat --print=%s Poland.txt`
WARSAW=`stat --print=%s Warsaw.txt`
AUSCHWITZ=`stat --print=%s Auschwitz.txt`

if [ $POLAND -ne 0 ];
then
  export CATFILE="Poland.txt"
  export CATNAME="Poland"
  $CATEGORIZE
fi

if [ $WARSAW -ne 0 ];
then
  export CATFILE="Warsaw.txt"
  export CATNAME="Warsaw"
  $CATEGORIZE
fi

if [ $AUSCHWITZ -ne 0 ];
then
  export CATFILE="Auschwitz.txt"
  export CATNAME="Auschwitz"
  $CATEGORIZE
fi

rm Poland.txt
rm Warsaw.txt
rm Auschwitz.txt