#!/bin/bash

egrep -i 'Microsoft(| )Access|ms(|)access' newpages.txt >> MicrosoftAccess.txt
egrep -i 'Excel\b|\.xls' newpages.txt | egrep -iv 'Hyundai' >> MicrosoftExcel.txt
egrep -i 'power(| )point|\.ppt' newpages.txt >> MicrosoftPowerPoint.txt
egrep -i 'Microsoft(| )Word|ms(|-| )word|\.doc' newpages.txt >> MicrosoftWord.txt
egrep -i 'Microsoft(| )Office|ms(|-| )office' newpages.txt | egrep -iv 'Microsoft(| )Access|ms(|)access|Excel\b|power(| )point|Microsoft(| )Word|ms(|-| )word' >> MicrosoftOffice.txt

OFFICE=`stat --print=%s MicrosoftOffice.txt`
ACCESS=`stat --print=%s MicrosoftAccess.txt`
EXCEL=`stat --print=%s MicrosoftExcel.txt`
POWERPOINT=`stat --print=%s MicrosoftPowerPoint.txt`
WORD=`stat --print=%s MicrosoftWord.txt`

if [ $OFFICE -ne 0 ];
then
  export CATFILE="MicrosoftOffice.txt"
  export CATNAME="Microsoft Office"
  $CATEGORIZE
fi

if [ $ACCESS -ne 0 ];
then
  export CATFILE="MicrosoftAccess.txt"
  export CATNAME="Microsoft Access"
  $CATEGORIZE
fi

if [ $EXCEL -ne 0 ];
then
  export CATFILE="MicrosoftExcel.txt"
  export CATNAME="Microsoft Excel"
  $CATEGORIZE
fi

if [ $POWERPOINT -ne 0 ];
then
  export CATFILE="MicrosoftPowerPoint.txt"
  export CATNAME="Microsoft PowerPoint"
  $CATEGORIZE
fi

if [ $WORD -ne 0 ];
then
  export CATFILE="MicrosoftWord.txt"
  export CATNAME="Microsoft Word"
  $CATEGORIZE
fi

rm MicrosoftOffice.txt
rm MicrosoftAccess.txt
rm MicrosoftExcel.txt
rm MicrosoftPowerPoint.txt
rm MicrosoftWord.txt
