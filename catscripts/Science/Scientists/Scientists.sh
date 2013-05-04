#!/bin/bash

egrep -i 'Stephen Hawking' newpages.txt >> StephenHawking.txt
egrep -i 'Charles Darwin' newpages.txt >> CharlesDarwin.txt
egrep -i 'Leonardo da Vinci' newpages.txt >> LeonardoDaVinci.txt
egrep -i 'Marie Curie' newpages.txt >> MarieCurie.txt
egrep -i 'Isaac Newton' newpages.txt >> IsaacNewton.txt

HAWKING=`stat --print=%s StephenHawking.txt`
DARWIN=`stat --print=%s CharlesDarwin.txt`
DAVINCI=`stat --print=%s LeonardoDaVinci.txt`
CURIE=`stat --print=%s MarieCurie.txt`
NEWTON=`stat --print=%s IsaacNewton.txt`

if [ $HAWKING -ne 0 ];
then
  export CATFILE="StephenHawking.txt"
  export CATNAME="Stephen Hawking"
  $CATEGORIZE
fi

if [ $DARWIN -ne 0 ];
then
  export CATFILE="CharlesDarwin"
  export CATNAME="Charles Darwin"
  $CATEGORIZE
fi

if [ $DAVINCI -ne 0 ];
then
  export CATFILE="LeonardoDaVinci.txt"
  export CATNAME="Leonardo da Vinci"
  $CATEGORIZE
fi

if [ $CURIE -ne 0 ];
then
  export CATFILE="MarieCurie.txt"
  export CATNAME="Marie Curie"
  $CATEGORIZE
fi

if [ $NEWTON -ne 0 ];
then
  export CATFILE="IsaacNewton.txt"
  export CATNAME="Isaac Newton"
  $CATEGORIZE
fi

rm StephenHawking.txt
rm CharlesDarwin.txt
rm LeonardoDaVinci.txt
rm MarieCurie.txt
rm IsaacNewton.txt
