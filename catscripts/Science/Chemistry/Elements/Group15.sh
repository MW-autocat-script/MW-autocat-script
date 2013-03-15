#!/bin/bash 

egrep -i '\bNitrogen\b|\bNitrogens\b' newpages.txt | egrep -iv 'Nitrogen \b.+(ate|ide|ite)' >> Nitrogen.txt
egrep -i 'Phosphorus|Phosphorous' newpages.txt | egrep -iv 'Phosphorus \b.+(ate|ide|ite)' >> Phosphorus.txt
egrep -i 'Arsenic' newpages.txt | egrep -iv 'Arsenic \b.+(ate|ide|ite)' >> Arsenic.txt
egrep -i '\bAntimony\b' newpages.txt | egrep -iv 'Antimony \b.+(ate|ide|ite)' >> Antimony.txt
egrep -i 'Bismuth' newpages.txt >> Bismuth.txt
egrep -i 'Ununpentium' newpages.txt | egrep -iv 'Ununpentium \b.+(ate|ide|ite)' >> Ununpentium.txt

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
  $CATEGORIZE
fi

if [ $PHOSPHORUS -ne 0 ];
then
  export CATFILE="Phosphorus.txt"
  export CATNAME="Phosphorus"
  $CATEGORIZE
fi

if [ $ARSENIC -ne 0 ];
then
  export CATFILE="Arsenic.txt"
  export CATNAME="Arsenic"
  $CATEGORIZE
fi

if [ $ANTIMONY -ne 0 ];
then
  export CATFILE="Antimony.txt"
  export CATNAME="Antimony"
  $CATEGORIZE
fi

if [ $BISMUTH -ne 0 ];
then
  export CATFILE="Bismuth.txt"
  export CATNAME="Bismuth"
  $CATEGORIZE
fi

if [ $UNUNPENTIUM -ne 0 ];
then
  export CATFILE="Ununpentium.txt"
  export CATNAME="Ununpentium"
  $CATEGORIZE
fi

rm Nitrogen.txt
rm Phosphorus.txt
rm Arsenic.txt
rm Antimony.txt
rm Bismuth.txt
rm Ununpentium.txt