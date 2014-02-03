#!/bin/bash

KEYWORDS_MICROSOFTOFFICE="Microsoft(| )Office|\bms(|-| )office"
KEYWORDS_MICROSOFTACCESS="Microsoft(| )Access|\bms(|)access"
KEYWORDS_MICROSOFTEXCEL="Excel\b|\.xls"
KEYWORDS_MICROSOFTEXCEL_EXCLUDE="Hyundai"
KEYWORDS_MICROSOFTPOWERPOINT="power(| )point|\.ppt"
KEYWORDS_MICROSOFTWORD="Microsoft(| )(|Office)(| )Word|\bms(|-| )word|\.doc"
KEYWORDS_MICROSOFTOFFICE_EXCLUDE="$KEYWORDS_MICROSOFTACCESS|$KEYWORDS_MICROSOFTEXCEL|$KEYWORDS_MICROSOFTPOWERPOINT|$KEYWORDS_MICROSOFTWORD"
KEYWORDS_MICROSOFTOFFICE_ALL="$KEYWORDS_MICROSOFTOFFICE|$KEYWORDS_MICROSOFTOFFICE_EXCLUDE"

if [ "$1" == "" ]; #Normal operation
then

  OFFICE="$(egrep -i "$KEYWORDS_MICROSOFTOFFICE" newpages.txt | egrep -iv "$KEYWORDS_MICROSOFTOFFICE_EXCLUDE")"
  ACCESS="$(egrep -i "$KEYWORDS_MICROSOFTACCESS" newpages.txt)"
  EXCEL="$(egrep -i "$KEYWORDS_MICROSOFTEXCEL" newpages.txt | egrep -iv "$KEYWORDS_MICROSOFTEXCEL_EXCLUDE")"
  POWERPOINT="$(egrep -i "$KEYWORDS_MICROSOFTPOWERPOINT" newpages.txt)"
  WORD="$(egrep -i "$KEYWORDS_MICROSOFTWORD" newpages.txt)"

  if [ "$OFFICE" != "" ];
  then
    printf "%s" "$OFFICE" > MicrosoftOffice.txt
    export CATFILE="MicrosoftOffice.txt"
    export CATNAME="Microsoft Office"
    $CATEGORIZE
    rm MicrosoftOffice.txt
    unset OFFICE
  fi

  if [ "$ACCESS" != "" ];
  then
    printf "%s" "$ACCESS" > MicrosoftAccess.txt
    export CATFILE="MicrosoftAccess.txt"
    export CATNAME="Microsoft Access"
    $CATEGORIZE
    rm MicrosoftAccess.txt
    unset ACCESS
  fi

  if [ "$EXCEL" != "" ];
  then
    printf "%s" "$EXCEL" > MicrosoftExcel.txt
    export CATFILE="MicrosoftExcel.txt"
    export CATNAME="Microsoft Excel"
    $CATEGORIZE
    rm MicrosoftExcel.txt
    unset EXCEL
  fi

  if [ "$POWERPOINT" != "" ];
  then
    printf "%s" "$POWERPOINT" > MicrosoftPowerPoint.txt
    export CATFILE="MicrosoftPowerPoint.txt"
    export CATNAME="Microsoft PowerPoint"
    $CATEGORIZE
    rm MicrosoftPowerPoint.txt
    unset POWERPOINT
  fi

  if [ "$WORD" != "" ];
  then
    printf "%s" "$WORD" > MicrosoftWord.txt
    export CATFILE="MicrosoftWord.txt"
    export CATNAME="Microsoft Word"
    $CATEGORIZE
    rm MicrosoftWord.txt
    unset WORD
  fi

fi