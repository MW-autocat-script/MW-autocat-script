#!/bin/bash

egrep -i 'Honda Accord|Hondaaccord|[0123456789]{1,} Accord' newpages.txt > HondaAccord.txt
egrep -i 'Honda Civic|Hondacivic|[0123456789]{1,} Civic' newpages.txt > HondaCivic.txt
egrep -i 'Honda Passport|Hondapassport|[0-9]{1,} Passport' newpages.txt > HondaPassport.txt
egrep -i 'Honda Element|Hondaelement|[0-9]{1,} Element\b' newpages.txt > HondaElement.txt

ACCORD=`stat --print=%s HondaAccord.txt`
CIVIC=`stat --print=%s HondaCivic.txt`
PASSPORT=`stat --print=%s HondaPassport.txt`
ELEMENT=`stat --print=%s HondaElement.txt`

if [ $ACCORD -ne 0 ];
then
  export CATFILE="HondaAccord.txt"
  export CATNAME="Honda Accord"
  ./catscripts/Categorize.sh
fi

if [ $CIVIC -ne 0 ];
then
  export CATFILE="HondaCivic.txt"
  export CATNAME="Honda Civic"
    ./catscripts/Categorize.sh
fi

if [ $PASSPORT -ne 0 ];
then
  export CATFILE="HondaPassport.txt"
  export CATNAME="Honda Passport"
  ./catscripts/Categorize.sh
fi

if [ $ELEMENT -ne 0 ];
then
  export CATFILE="HondaElement.txt"
  export CATNAME="Honda Element"
  ./catscripts/Categorize.sh
fi

rm HondaAccord.txt
rm HondaCivic.txt
rm HondaPassport.txt
rm HondaElement.txt