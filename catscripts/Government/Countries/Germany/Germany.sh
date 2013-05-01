#!/bin/bash

egrep -i 'Germany' newpages.txt | egrep -iv 'Nazi Germany|Berlin|Hitler' >> Germany.txt
egrep -i 'Nazi' newpages.txt | egrep -iv 'Hitler' >> NaziGermany.txt
egrep -i 'Hitler youth' newpages.txt >> NaziGermany.txt
egrep -i '\bBerlin' newpages.txt >> Berlin.txt
egrep -i 'Hitler' newpages.txt | egrep -iv 'Hitler youth' >> AdolfHitler.txt

GERMANY=`stat --print=%s Germany.txt`
NAZI=`stat --print=%s NaziGermany.txt`
HITLER=`stat --print=%s AdolfHitler.txt`
BERLIN=`stat --print=%s Berlin.txt`

if [ $GERMANY -ne 0 ];
then
  export CATFILE="Germany.txt"
  export CATNAME="Germany"
  $CATEGORIZE
fi

if [ $NAZI -ne 0 ];
then
  export CATFILE="NaziGermany.txt"
  export CATNAME="Nazi Germany"
  $CATEGORIZE
fi

if [ $HITLER -ne 0 ];
then
  export CATFILE="AdolfHitler.txt"
  export CATNAME="Adolf Hitler"
  $CATEGORIZE
fi

if [ $BERLIN -ne 0 ];
then
  export CATFILE="Berlin.txt"
  export CATNAME="Berlin"
  $CATEGORIZE
fi

rm Germany.txt
rm NaziGermany.txt
rm AdolfHitler.txt
rm Berlin.txt