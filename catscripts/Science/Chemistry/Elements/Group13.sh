#!/bin/bash
#IUPAC Group 13 elements.

egrep -i 'Boron' newpages.txt | egrep -iv 'Boron \b.+ide|Boron \b.+ate|Boron \b.+ite' >> Boron.txt
egrep -i 'Aluminium|Aluminum' newpages.txt | egrep -iv '(Aluminium|Aluminum) \b.+ide|(Aluminium|Aluminum) \b.+ate|(Aluminium|Aluminum) \b.+ite' >> Aluminium.txt
egrep -i 'Gallium' newpages.txt | egrep -iv 'Gallium \b.+ide|Gallium \b.+ate|Gallium \b.+ite' >> Gallium.txt
egrep -i 'Indium' newpages.txt | egrep -iv 'Indium \b.+ide|Indium \b.+ate|Indium \b.+ite' >> Indium.txt
egrep -i 'Thallium' newpages.txt | egrep -iv 'rubidiun \b.+ide|Thallium \b.+ate|Thallium \b.+ite' >> Thallium.txt 
egrep -i 'Ununtrium' newpages.txt >>  Ununtrium.txt

BORON=`stat --print=%s Boron.txt`
ALUMINIUM=`stat --print=%s Aluminium.txt`
GALLIUM=`stat --print=%s Gallium.txt`
INDIUM=`stat --print=%s Indium.txt`
THALLIUM=`stat --print=%s Thallium.txt`
UNUNTRIUM=`stat --print=%s Ununtrium.txt`

if [ $BORON -ne 0 ];
then
  export CATFILE="Boron.txt"
  export CATNAME="Boron"
  ./catscripts/Categorize.sh
fi

if [ $ALUMINIUM -ne 0 ];
then
  export CATFILE="Aluminium.txt"
  export CATNAME="Aluminium"
  ./catscripts/Categorize.sh
fi

if [ $GALLIUM -ne 0 ];
then
  export CATFILE="Gallium.txt"
  export CATNAME="Gallium"
  ./catscripts/Categorize.sh
fi

if [ $INDIUM -ne 0 ];
then
  export CATFILE="Indium.txt"
  export CATNAME="Indium"
  ./catscripts/Categorize.sh
fi

if [ $THALLIUM -ne 0 ];
then
  export CATFILE="Thallium.txt"
  export CATNAME="Thallium"
  ./catscripts/Categorize.sh
fi

if [ $UNUNTRIUM -ne 0 ];
then
  export CATFILE="Ununtrium.txt"
  export CATNAME="Ununtrium"
  ./catscripts/Categorize.sh
fi

rm Boron.txt
rm Aluminium.txt
rm Gallium.txt
rm Indium.txt
rm Thallium.txt
rm Ununtrium.txt