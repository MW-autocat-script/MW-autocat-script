#!/bin/bash 

cat newpages.txt | egrep -i '\bFluorine' | egrep -iv 'Fluorine \b.+(ate|ide|ite)' >> Fluorine.txt
cat newpages.txt | egrep -i 'Chlorine' | egrep -iv 'Chlorine \b.+(ate|ide|ite)' >> Chlorine.txt
cat newpages.txt | egrep -i '\bBromine' | egrep -iv 'Bromine \b.+(ate|ide|ite)' >> Bromine.txt
cat newpages.txt | egrep -i 'Iodine' | egrep -iv 'Iodine \b.+(ate|ide|ite)' >> Iodine.txt
cat newpages.txt | egrep -i '\bAstatine' | egrep -iv 'Astatine \b.+(ate|ide|ite)' >> Astatine.txt
cat newpages.txt | egrep -i 'Ununseptium' | egrep -iv 'Ununseptium \b.+(ate|ide|ite)' >> Ununseptium.txt

FLUORINE=`stat --print=%s Fluorine.txt`
CHLORINE=`stat --print=%s Chlorine.txt`
BROMINE=`stat --print=%s Bromine.txt`
IODINE=`stat --print=%s Iodine.txt`
ASTATINE=`stat --print=%s Astatine.txt`
UNUNSEPTIUM=`stat --print=%s Ununseptium.txt`

if [ $FLUORINE -ne 0 ];
then
  export CATFILE="Fluorine.txt"
  export CATNAME="Fluorine"
  ./catscripts/Categorize.sh
fi

if [ $CHLORINE -ne 0 ];
then
  export CATFILE="Chlorine.txt"
  export CATNAME="Chlorine"
  ./catscripts/Categorize.sh
fi

if [ $BROMINE -ne 0 ];
then
  export CATFILE="Bromine.txt"
  export CATNAME="Bromine"
  ./catscripts/Categorize.sh
fi

if [ $IODINE -ne 0 ];
then
  export CATFILE="Iodine.txt"
  export CATNAME="Iodine"
  ./catscripts/Categorize.sh
fi

if [ $ASTATINE -ne 0 ];
then
  export CATFILE="Astatine.txt"
  export CATNAME="Astatine"
  ./catscripts/Categorize.sh
fi

if [ $UNUNSEPTIUM -ne 0 ];
then
  export CATFILE="Ununseptium.txt"
  export CATNAME="Ununseptium"
  ./catscripts/Categorize.sh
fi

rm Fluorine.txt
rm Chlorine.txt
rm Bromine.txt
rm Iodine.txt
rm Astatine.txt
rm Ununseptium.txt