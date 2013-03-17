#!/bin/bash

egrep -i 'Israel' newpages.txt | egrep -iv 'Jeru(-|)salem|Tel(| )Aviv|Israelite' >> Israel.txt
egrep -i 'Israelite|Ancient Israel' newpages.txt >> AncientIsrael.txt
egrep -i 'Jeru(-|)salem' newpages.txt | egrep -iv 'Jerusalem artichoke' >> Jerusalem.txt #Jerusalem artichoke is a tuber from a biannual sunflower, and has nothing to do with the city or Israel
egrep -i 'Tel(| )Aviv' newpages.txt >> TelAviv.txt

ISRAEL=`stat --print=%s Israel.txt`
ISRAELITES=`stat --print=%s AncientIsrael.txt`
JERUSALEM=`stat --print=%s Jerusalem.txt`
TELAVIV=`stat --print=%s TelAviv.txt`

if [ $ISRAEL -ne 0 ];
then
  export CATFILE="Israel.txt"
  export CATNAME="Israel"
  $CATEGORIZE
fi

if [ $ISRAELITES -ne 0 ];
then
  export CATFILE="AncientIsrael.txt"
  export CATNAME="Ancient Israel"
  $CATEGORIZE
fi

if [ $JERUSALEM -ne 0 ];
then
  export CATFILE="Jerusalem.txt"
  export CATNAME="Jerusalem"
  $CATEGORIZE
fi

if [ $TELAVIV -ne 0 ];
then
  export CATFILE="TelAviv.txt"
  export CATNAME="Tel Aviv"
  $CATEGORIZE
fi

rm Israel.txt
rm AncientIsrael.txt
rm Jerusalem.txt
rm TelAviv.txt