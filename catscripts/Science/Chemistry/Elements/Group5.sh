#!/bin/bash 

cat newpages.txt | egrep -i 'Vanadium' >> Vanadium.txt
cat newpages.txt | egrep -i 'Niobium' >> Niobium.txt
cat newpages.txt | egrep -i 'Tantalum' >> Tantalum.txt
cat newpages.txt | egrep -i 'Dubnium' >> Dubnium.txt

VANADIUM=`stat --print=%s Vanadium.txt`
NIOBIUM=`stat --print=%s Niobium.txt`
TANTALUM=`stat --print=%s Tantalum.txt`
DUBNIUM=`stat --print=%s Dubnium.txt`

if [ $VANADIUM -ne 0 ];
then
  export CATFILE="Vanadium.txt"
  export CATNAME="Vanadium"
  ./catscripts/Categorize.sh
fi

if [ $NIOBIUM -ne 0 ];
then
  export CATFILE="Niobium.txt"
  export CATNAME="Niobium"
  ./catscripts/Categorize.sh
fi

if [ $TANTALUM -ne 0 ];
then
  export CATFILE="Tantalum.txt"
  export CATNAME="Tantalum"
  ./catscripts/Categorize.sh
fi

if [ $DUBNIUM -ne 0 ];
then
  export CATFILE="Dubnium.txt"
  export CATNAME="Dubnium"
  ./catscripts/Categorize/sh
fi

rm Vanadium.txt
rm Niobium.txt
rm Tantalum.txt
rm Dubnium.txt