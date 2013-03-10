#!/bin/bash

egrep -i 'Windows(|(| )Live)(| )Movie(| )Maker' newpages.txt >> WindowsMovieMaker.txt
egrep -i 'Adobe(| )Premiere|Premier(| )Pro' newpages.txt >> AdobePremierePro.txt
egrep -i '\biMovie|Nero Vision' newpages.txt >> Videoediting.txt
egrep -i 'video edit|edit video|convert.+video|video.+convert' newpages.txt | egrep -iv 'Windows(|(| )Live)(| )Movie(| )Maker|Adobe(| )Premiere|Premier(| )Pro|\biMovie' >> Videoediting.txt

WMM=`stat --print=%s WindowsMovieMaker.txt`
PREMIERE=`stat --print=%s AdobePremierePro.txt`
VIDEO=`stat --print=%s Videoediting.txt`

if [ $VIDEO -ne 0 ];
then
  export CATFILE="Videoediting.txt"
  export CATNAME="Video editing software"
  ./catscripts/Categorize.sh
fi

if [ $WMM -ne 0 ];
then
  export CATFILE="WindowsMovieMaker.txt"
  export CATNAME="Windows Movie Maker"
  ./catscripts/Categorize.sh
fi

if [ $PREMIERE -ne 0 ];
then
  export CATFILE="AdobePremierePro.txt"
  export CATNAME="Adobe Premiere Pro"
  ./catscripts/Categorize.sh
fi

rm WindowsMovieMaker.txt
rm AdobePremierePro.txt
rm Videoediting.txt