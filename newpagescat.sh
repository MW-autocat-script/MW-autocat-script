#!/bin/bash

#Set global variables
##GBT is Throttle (pywikipedia default is 10, and if you need something faster than 1, you should pay somebody to write something better)
##NPL is the limit for the page generator
export GBT=3
export NPL=60
export PYWIKIPEDIADIR=/home/test/QuestionKitty
#Fetch new pages

echo "Generating pages"

python $PYWIKIPEDIADIR/pagegenerators.py -new:$NPL|sed 's|[0-9][0-9][0-9]: |\* \[\[|'| sed 's|[0-9][0-9]: |\* \[\[|' | sed 's|[0-9]: |\* \[\[|' | sed 's:$:]]:' > newpages.txt
 
#grep keywords from list


##Poptropica

cat newpages.txt | egrep -i 'poptropica|potropica|poptopica' > Poptropica.txt

##Moshi Monsters

cat newpages.txt | egrep -i 'Moshi Monsters|moshimonsters|moshling|furnando|furando|meowford|dustbin beaver|dustbinbeaver|dustin beaver|meowford' > MoshiMonsters.txt

##Woozworld

cat newpages.txt | egrep -i 'Woozworld|Wooz world' > Woozworld.txt

##PNPA

cat newpages.txt | egrep -i 'PNPA' > PNPA.txt
cat newpages.txt | egrep -i '(pnp\b.+neuro|neuro.+pnp)' >> PNPA.txt


#Size test

POPTROPICA=`stat --print=%s Poptropica.txt`
SIZEOFMOSHIMONSTERS=`stat --print=%s MoshiMonsters.txt`
SIZEOFWOOZWORLD=`stat --print=%s Woozworld.txt`
SIZEOFPNPA=`stat --print=%s PNPA.txt`


if [ $POPTROPICA -ne 0 ];
then
  ./catscripts/Temp/poptropica.sh
fi

if [ $SIZEOFMOSHIMONSTERS -ne 0 ];
then
  ./catscripts/Temp/moshimonsters.sh
fi

if [ $SIZEOFWOOZWORLD -ne 0 ];
then
  ./catscripts/Temp/woozworld.sh
fi

if [ $SIZEOFPNPA -ne 0 ];
then
  ./catscripts/Temp/pnpa.sh
fi

echo "Running subscripts"

./catscripts/Language/Language.sh
./catscripts/Technology/Technology.sh
./catscripts/Transportation/Transportation.sh
./catscripts/Math/Math.sh
./catscripts/Entertainment/Entertainment.sh
./catscripts/Science/Science.sh
./catscripts/Maintenance/Maintenance.sh

#Cleanup

echo "Cleanup"

rm Poptropica.txt
rm MoshiMonsters.txt
rm Woozworld.txt
rm PNPA.txt

