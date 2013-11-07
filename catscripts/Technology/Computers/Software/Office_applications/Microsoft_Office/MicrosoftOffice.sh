#!/bin/bash

KEYWORDS_MICROSOFTOFFICE="Microsoft(| )Office|\bms(|-| )office"
KEYWORDS_MICROSOFTACCESS="Microsoft(| )Access|\bms(|)access"
KEYWORDS_MICROSOFTEXCEL="Excel\b|\.xls"
KEYWORDS_MICROSOFTEXCEL_EXCLUDE="Hyundai"
KEYWORDS_MICROSOFTPOWERPOINT="power(| )point|\.ppt"
KEYWORDS_MICROSOFTWORD="Microsoft(| )Word|\bms(|-| )word|\.doc"
KEYWORDS_MICROSOFTOFFICE_EXCLUDE="$KEYWORDS_MICROSOFTACCESS|$KEYWORDS_MICROSOFTEXCEL|$KEYWORDS_MICROSOFTPOWERPOINT|$KEYWORDS_MICROSOFTWORD"
KEYWORDS_MICROSOFTOFFICE_ALL="$KEYWORDS_MICROSOFTOFFICE|$KEYWORDS_MICROSOFTOFFICE_EXCLUDE"

if [ "$1" == "" ]; #Normal operation
then
  egrep -i "$KEYWORDS_MICROSOFTACCESS" newpages.txt >> MicrosoftAccess.txt
  egrep -i "$KEYWORDS_MICROSOFTEXCEL" newpages.txt | egrep -iv "$KEYWORDS_MICROSOFTEXCEL_EXCLUDE" >> MicrosoftExcel.txt
  egrep -i "$KEYWORDS_MICROSOFTPOWERPOINT" newpages.txt >> MicrosoftPowerPoint.txt
  egrep -i "$KEYWORDS_MICROSOFTWORD" newpages.txt >> MicrosoftWord.txt
  egrep -i "$KEYWORDS_MICROSOFTOFFICE" newpages.txt | egrep -iv "$KEYWORDS_MICROSOFTOFFICE_EXCLUDE" >> MicrosoftOffice.txt

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

fi