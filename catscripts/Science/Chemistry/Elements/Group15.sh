#!/bin/bash 

cat newpages.txt | egrep -i '\bNitrogen\b|\bNitrogens\b' | egrep -iv 'Nitrogen \b.+(ate|ide|ite)' >> Nitrogen.txt
cat newpages.txt | egrep -i 'Phosphorus|Phosphorous' | egrep -iv 'Phosphorus \b.+(ate|ide|ite)' >> Phosphorus.txt
cat newpages.txt | egrep -i 'Arsenic' | egrep -iv 'Arsenic \b.+(ate|ide|ite)' >> Arsenic.txt
cat newpages.txt | egrep -i '\bAntimony\b' | egrep -iv 'Antimony \b.+(ate|ide|ite)' >> Antimony.txt
cat newpages.txt | egrep -i 'Bismuth' >> Bismuth.txt
cat newpages.txt | egrep -i 'Ununpentium' | egrep -iv 'Ununpentium \b.+(ate|ide|ite)' >> Ununpentium.txt

NITROGEN=`stat --print=%s Nitrogen.txt`
PHOSPHORUS=`stat --print=%s Phosphorus.txt`
ARSENIC=`stat --print=%s Arsenic.txt`
ANTIMONY=`stat --print=%s Antimony.txt`
BISMUTH=`stat --print=%s Bismuth.txt`
UNUNPENTIUM=`stat --print=%s Ununpentium.txt`

if [ $NITROGEN -ne 0 ];
then
  export CATFILE="Nitrogen.txt"
  export CATNAME="Nitrogen"
  ./catscripts/Categorize.sh
fi

if [ $PHOSPHORUS -ne 0 ];
then
  export CATFILE="Phosphorus.txt"
  export CATNAME="Phosphorus"
  ./catscripts/Categorize.sh
fi

if [ $ARSENIC -ne 0 ];
then
  export CATFILE="Arsenic.txt"
  export CATNAME="Arsenic"
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
rm Phosphorus.txt
rm Arsenic.txt
rm Antimony.txt
rm Bismuth.txt
rm Ununpentium.txt