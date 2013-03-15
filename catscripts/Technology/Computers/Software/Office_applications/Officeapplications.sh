#!/bin/bash

egrep -i 'Office suite|office application' newpages.txt | egrep -iv 'Microsoft Office' >> Officeapps.txt
egrep -i 'Open(| )Office|Libre(| )Office' newpages.txt >> Officeapps.txt
egrep -i 'word process(or|ing)' newpages.txt | egrep -iv 'Microsoft Word' >> Wordprocessing.txt

APPS=`stat --print=%s Officeapps.txt`
WPROCESS=`stat --print=%s Wordprocessing.txt`

if [ $APPS -ne 0 ];
then
  export CATFILE="Officeapps.txt"
  export CATNAME="Office applications"
  $CATEGORIZE
fi

if [ $WPROCESS -ne 0 ];
then
  export CATFILE="Wordprocessing.txt"
  export CATNAME="Word processors"
  $CATEGORIZE
fi

rm Officeapps.txt
rm Wordprocessing.txt

CURRENTDIR="./catscripts/Technology/Computers/Software/Office_applications"

$CURRENTDIR/Microsoft_Office/MicrosoftOffice.sh