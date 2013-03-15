#!/bin/bash 

egrep -i '\bCarbon\b|\bCarbons\b' newpages.txt | egrep -iv 'Carbon \b.+(ate|ide|ite)|Need For Speed|\bNFS' >> Carbon.txt
egrep -i 'Silicon' newpages.txt | egrep -iv 'Silicon \b.+(ate|ide|ite)|Silicon Valley' >> Silicon.txt
egrep -i 'Germanium' newpages.txt | egrep -iv 'Germanium \b.+(ate|ide|ite)' >> Germanium.txt
egrep -i '\bTin\b' newpages.txt | egrep -iv 'Tin \b.+(ate|ide|ite)|Tin Man|Tin Tower' >> Tin.txt
egrep -i 'Lead' newpages.txt | egrep -i 'atom|proton|neutron|electron|\bion|melt|boil|metal|vapor|magnet|element|compound|toxic|molecule|electricity|conduct|poison|lead weight' >> Lead.txt
egrep -i 'Flerovium' newpages.txt | egrep -iv 'Flerovium \b.+(ate|ide|ite)' >> Flerovium.txt

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
  $CATEGORIZE
fi

if [ $SILICON -ne 0 ];
then
  export CATFILE="Silicon.txt"
  export CATNAME="Silicon"
  $CATEGORIZE
fi

if [ $GERMANIUM -ne 0 ];
then
  export CATFILE="Germanium.txt"
  export CATNAME="Germanium"
  $CATEGORIZE
fi

if [ $TIN -ne 0 ];
then
  export CATFILE="Tin.txt"
  export CATNAME="Tin"
  $CATEGORIZE
fi

if [ $LEAD -ne 0 ];
then
  export CATFILE="Lead.txt"
  export CATNAME="Lead"
  $CATEGORIZE
fi

if [ $FLEROVIUM -ne 0 ];
then
  export CATFILE="Flerovium.txt"
  export CATNAME="Flerovium"
  $CATEGORIZE
fi

rm Carbon.txt
rm Silicon.txt
rm Germanium.txt
rm Tin.txt
rm Lead.txt
rm Flerovium.txt