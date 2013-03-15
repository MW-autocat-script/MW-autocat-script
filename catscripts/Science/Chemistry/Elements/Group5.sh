#!/bin/bash 

egrep -i 'Vanadium' newpages.txt >> Vanadium.txt
egrep -i 'Niobium' newpages.txt >> Niobium.txt
egrep -i 'Tantalum' newpages.txt >> Tantalum.txt
egrep -i 'Dubnium' newpages.txt >> Dubnium.txt

VANADIUM=`stat --print=%s Vanadium.txt`
NIOBIUM=`stat --print=%s Niobium.txt`
TANTALUM=`stat --print=%s Tantalum.txt`
DUBNIUM=`stat --print=%s Dubnium.txt`

if [ $VANADIUM -ne 0 ];
then
  export CATFILE="Vanadium.txt"
  export CATNAME="Vanadium"
  $CATEGORIZE
fi

if [ $NIOBIUM -ne 0 ];
then
  export CATFILE="Niobium.txt"
  export CATNAME="Niobium"
  $CATEGORIZE
fi

if [ $TANTALUM -ne 0 ];
then
  export CATFILE="Tantalum.txt"
  export CATNAME="Tantalum"
  $CATEGORIZE
fi

if [ $DUBNIUM -ne 0 ];
then
  export CATFILE="Dubnium.txt"
  export CATNAME="Dubnium"
  $CATEGORIZE
fi

rm Vanadium.txt
rm Niobium.txt
rm Tantalum.txt
rm Dubnium.txt