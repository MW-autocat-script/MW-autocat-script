#!/bin/bash

egrep -i 'Kindle Fire' newpages.txt >> KindleFire.txt
egrep -i '\biPad' newpages.txt >> iPad.txt
egrep -i 'tablet (computer|pc)|Android tablet|Windows 8 tablet' newpages.txt | egrep -iv 'iPad|Kindle Fire' >> Tabletcomputers.txt

KINDLE=`stat --print=%s KindleFire.txt`
IPAD=`stat --print=%s iPad.txt`
TABLETS=`stat --print=%s Tabletcomputers.txt`

if [ $KINDLE -ne 0 ];
then
  export CATFILE="KindleFire.txt"
  export CATNAME="Kindle Fire"
  ./catscripts/Categorize.sh
fi

if [ $IPAD -ne 0 ];
then
  export CATFILE="iPad.txt"
  export CATNAME="iPad"
  ./catscripts/Categorize.sh
fi

if [ $TABLETS -ne 0 ];
then
  export CATFILE="Tabletcomputers.txt"
  export CATNAME="Tablet computers"
  ./catscripts/Categorize.sh
fi

rm KindleFire.txt
rm iPad.txt
rm Tabletcomputers.txt