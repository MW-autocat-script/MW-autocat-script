#!/bin/bash
#IUPAC Group 1 elements. Hydrogen is also included here for convenience.

egrep -i 'hydrogen' newpages.txt | egrep -iv 'hydrogen \b.+ide|hydrogen \b.+ate|hydrogen \b.+ite' >> Hydrogen.txt
egrep -i 'lithium' newpages.txt | egrep -iv 'lithium \b.+ide|lithium \b.+ate|lithium \b.+ite' >> Lithium.txt
egrep -i 'sodium' newpages.txt | egrep -iv 'sodium \b.+ide|sodium \b.+ate|sodium \b.+ite' >> Sodium.txt
egrep -i 'potassium' newpages.txt | egrep -iv 'potassium \b.+ide|potassium \b.+ate|potassium \b.+ite' >> Potassium.txt
egrep -i 'rubidium' newpages.txt | egrep -iv 'rubidiun \b.+ide|rubidium \b.+ate|rubidium \b.+ite' >> Rubidium.txt 
egrep -i 'caesium|cesium' newpages.txt | egrep -iv '(caesium|cesium) \b.+ide|(caesium|cesium) \b.+ate|(caesium|cesium) \b.+ite' >> Caesium.txt
egrep -i 'Francium' newpages.txt | egrep -iv 'Francium \b.+ide|Francium \b.+ate|Francium \b.+ite' >> Francium.txt
egrep -i 'Ununennium' newpages.txt >> Ununennium.txt

HYDROGEN=`stat --print=%s Hydrogen.txt`
LITHIUM=`stat --print=%s Lithium.txt`
SODIUM=`stat --print=%s Sodium.txt`
POTASSIUM=`stat --print=%s Potassium.txt`
RUBIDIUM=`stat --print=%s Rubidium.txt`
FRANCIUM=`stat --print=%s Francium.txt`
UUE=`stat --print=%s Ununennium.txt`

if [ $HYDROGEN -ne 0 ];
then
  export CATFILE="Hydrogen.txt"
  export CATNAME="Hydrogen"
  $CATEGORIZE
fi

if [ $LITHIUM -ne 0 ];
then
  export CATFILE="Lithium.txt"
  export CATNAME="Lithium"
  $CATEGORIZE
fi

if [ $SODIUM -ne 0 ];
then
  export CATFILE="Sodium.txt"
  export CATNAME="Sodium"
  $CATEGORIZE
fi

if [ $POTASSIUM -ne 0 ];
then
  export CATFILE="Potassium.txt"
  export CATNAME="Potassium"
  $CATEGORIZE
fi

if [ $RUBIDIUM -ne 0 ];
then
  export CATFILE="Rubidium.txt"
  export CATNAME="Rubidium"
  $CATEGORIZE
fi

if [ $FRANCIUM -ne 0 ];
then
  export CATFILE="Francium.txt"
  export CATNAME="Francium"
  $CATEGORIZE
fi

if [ $UUE -ne 0 ];
then
  export CATFILE="Ununennium.txt"
  export CATNAME="Ununennium"
  $CATEGORIZE
fi

rm Hydrogen.txt
rm Lithium.txt
rm Sodium.txt
rm Potassium.txt
rm Rubidium.txt
rm Caesium.txt
rm Francium.txt
rm Ununennium.txt