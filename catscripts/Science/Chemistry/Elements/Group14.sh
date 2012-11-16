#!/bin/bash 

cat newpages.txt | egrep -i '\bCarbon\b|\bCarbons\b' | egrep -iv 'Carbon \b.+(ate|ide|ite)|Need For Speed|\bNFS' >> Carbon.txt
cat newpages.txt | egrep -i 'Silicon' | egrep -iv 'Silicon \b.+(ate|ide|ite)|Silicon Valley' >> Silicon.txt
cat newpages.txt | egrep -i 'Germanium' | egrep -iv 'Germanium \b.+(ate|ide|ite)' >> Germanium.txt
cat newpages.txt | egrep -i '\bTin\b' | egrep -iv 'Tin \b.+(ate|ide|ite)|Tin Man|Tin Tower' >> Tin.txt
cat newpages.txt | egrep -i 'Lead' | | egrep -i 'atom|proton|neutron|electron|\bion|melt|boil|metal|vapor|magnet|element|compound|toxic|molecule|electricity|conduct|poison|lead weight' >> Lead.txt
cat newpages.txt | egrep -i 'Flerovium' | egrep -iv 'Flerovium \b.+(ate|ide|ite)' >> Flerovium.txt

CARBON=`stat --print=%s Carbon.txt`
SILICON=`stat --print=%s Silicon.txt`
GERMANIUM=`stat --print=%s Germanium.txt`
TIN=`stat --print=%s Tin.txt`
LEAD=`stat --print=%s Lead.txt`
FLEROVIUM=`stat --print=%s Flerovium.txt`

if [ $CARBON -ne 0 ];
then
  export CATFILE="Carbon.txt"
  export CATNAME="Carbon"
  ./catscripts/Categorize.sh
fi

if [ $SILICON -ne 0 ];
then
  export CATFILE="Silicon.txt"
  export CATNAME="Silicon"
  ./catscripts/Categorize.sh
fi

if [ $GERMANIUM -ne 0 ];
then
  export CATFILE="Germanium.txt"
  export CATNAME="Germanium"
  ./catscripts/Categorize.sh
fi

if [ $TIN -ne 0 ];
then
  export CATFILE="Tin.txt"
  export CATNAME="Tin"
  ./catscripts/Categorize.sh
fi

if [ $LEAD -ne 0 ];
then
  export CATFILE="Lead.txt"
  export CATNAME="Lead"
  ./catscripts/Categorize.sh
fi

if [ $FLEROVIUM -ne 0 ];
then
  export CATFILE="Flerovium.txt"
  export CATNAME="Flerovium"
  ./catscripts/Categorize.sh
fi

rm Carbon.txt
rm Silicon.txt
rm Germanium.txt
rm Tin.txt
rm Lead.txt
rm Flerovium.txt