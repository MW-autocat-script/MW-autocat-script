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

##Studyladder

cat newpages.txt | egrep -i 'Studyladder|Study ladder|study lader|studdy ladder|studdyladder' > Studyladder.txt


##Literacy Planet

cat newpages.txt | egrep -i 'Literacy Planet|LiteracyPlanet|Litracy planet|intrepica|intreprica|interprica|intripeca' > LiteracyPlanet.txt

##Moshi Monsters

cat newpages.txt | egrep -i 'Moshi Monsters|moshimonsters|moshling|furnando|furando|meowford|dustbin beaver|dustbinbeaver|dustin beaver|meowford' > MoshiMonsters.txt

##Woozworld

cat newpages.txt | egrep -i 'Woozworld|Wooz world' > Woozworld.txt

##PNPA

cat newpages.txt | egrep -i 'PNPA' > PNPA.txt
cat newpages.txt | egrep -i '(pnp\b.+neuro|neuro.+pnp)' >> PNPA.txt

cat newpages.txt | egrep -iv "\bwho|\bwhat|where\b|\bwhen\b|\bwhy|how\b|\bdo\b|\shas\b|does\b|did\b|will\b|is\b|are\b|\bwere\b|\bwas\b|\bwhich\b|\bcould|should\b|shouldn't|\bwould|can\b|[0-9]{1,}" >> 3WNQ.txt

cat newpages.txt | egrep -i 'porn|hentai|lolicon|sex.+videos|videos.+sex' >> Pornography.txt

#Size test

POPTROPICA=`stat --print=%s Poptropica.txt`
STUDYLADDER=`stat --print=%s Studyladder.txt`
SIZEOFLITERACYPLANET=`stat --print=%s LiteracyPlanet.txt`
SIZEOFMOSHIMONSTERS=`stat --print=%s MoshiMonsters.txt`
SIZEOFWOOZWORLD=`stat --print=%s Woozworld.txt`
SIZEOFPNPA=`stat --print=%s PNPA.txt`
SIZEOF3WNQ=`stat --print=%s 3WNQ.txt`
SIZEOFPORNOGRAPHY=`stat --print=%s Pornography.txt`


if [ $POPTROPICA -ne 0 ];
then
  ./poptropica.sh
fi

if [ $STUDYLADDER -ne 0 ];
then
  ./studyladder.sh
fi

if [ $SIZEOFLITERACYPLANET -ne 0 ];
then
  ./literacyplanet.sh
fi

if [ $SIZEOFMOSHIMONSTERS -ne 0 ];
then
  ./moshimonsters.sh
fi

if [ $SIZEOFWOOZWORLD -ne 0 ];
then
  ./woozworld.sh
fi

if [ $SIZEOFPNPA -ne 0 ];
then
  ./pnpa.sh
fi

if [ $SIZEOF3WNQ -ne 0 ];
then
  ./noninterrogative.sh
fi

if [ $SIZEOFPORNOGRAPHY -ne 0 ];
then
  ./pornography.sh
fi
echo "Running subscripts"

./catscripts/Language/Language.sh
./catscripts/Technology/Technology.sh
./catscripts/Transportation/Transportation.sh
./catscripts/Math/Math.sh
./catscripts/Entertainment/Entertainment.sh
./catscripts/Science/Science.sh

#Cleanup

echo "Cleanup"

rm Poptropica.txt
rm Studyladder.txt
rm LiteracyPlanet.txt
rm MoshiMonsters.txt
rm Woozworld.txt
rm PNPA.txt
rm 3WNQ.txt
rm Pornography.txt

