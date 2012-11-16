#!/bin/bash 

cat newpages.txt | egrep -i '\bNitrogen\b|\bNitrogens\b' | egrep -iv 'Nitrogen \b.+(ate|ide|ite)' >> Nitrogen.txt
cat newpages.txt | egrep -i 'Phosphorous' | egrep -iv 'Phosphorous \b.+(ate|ide|ite)' >> Phosphorous.txt
cat newpages.txt | egrep -i 'Aresenic' | egrep -iv 'Aresenic \b.+(ate|ide|ite)' >> Aresenic.txt
cat newpages.txt | egrep -i '\bAntimony\b' | egrep -iv 'Antimony \b.+(ate|ide|ite)' >> Antimony.txt
cat newpages.txt | egrep -i 'Bismuth' >> Bismuth.txt
cat newpages.txt | egrep -i 'Ununpentium' | egrep -iv 'Ununpentium \b.+(ate|ide|ite)' >> Ununpentium.txt

NITROGEN=`stat --print=%s Nitrogen.txt`
PHOSPHOROUS=`stat --print=%s Phosphorous.txt`
ARSENIC=`stat --print=%s Aresenic.txt`
ANTIMONY=`stat --print=%s Antimony.txt`
BISMUTH=`stat --print=%s Bismuth.txt`
UNUNPENTIUM=`stat --print=%s Ununpentium.txt`

if [ $NITROGEN -ne 0 ];
then
  export CATFILE="Nitrogen.txt"
  export CATNAME="Nitrogen"
  ./catscripts/Categorize.sh
fi

if [ $PHOSPHOROUS -ne 0 ];
then
  export CATFILE="Phosphorous.txt"
  export CATNAME="Phosphorous"
  ./catscripts/Categorize.sh
fi

if [ $ARSENIC -ne 0 ];
then
  export CATFILE="Aresenic.txt"
  export CATNAME="Aresenic"
  ./catscripts/Categorize.sh
fi

if [ $ANTIMONY -ne 0 ];
then
  export CATFILE="Antimony.txt"
  export CATNAME="Antimony"
  ./catscripts/Categorize.sh
fi

if [ $BISMUTH -ne 0 ];
then
  export CATFILE="Bismuth.txt"
  export CATNAME="Bismuth"
  ./catscripts/Categorize.sh
fi

if [ $UNUNPENTIUM -ne 0 ];
then
  export CATFILE="Ununpentium.txt"
  export CATNAME="Ununpentium"
  ./catscripts/Categorize.sh
fi

rm Nitrogen.txt
rm Phosphorous.txt
rm Aresenic.txt
rm Antimony.txt
rm Bismuth.txt
rm Ununpentium.txt