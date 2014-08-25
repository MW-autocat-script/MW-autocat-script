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

  debug_start "Microsoft Office"

  OFFICE=$(egrep -i "$KEYWORDS_MICROSOFTOFFICE" "$NEWPAGES" | egrep -iv "$KEYWORDS_MICROSOFTOFFICE_EXCLUDE")
  ACCESS=$(egrep -i "$KEYWORDS_MICROSOFTACCESS" "$NEWPAGES")
  EXCEL=$(egrep -i "$KEYWORDS_MICROSOFTEXCEL" "$NEWPAGES" | egrep -iv "$KEYWORDS_MICROSOFTEXCEL_EXCLUDE")
  POWERPOINT=$(egrep -i "$KEYWORDS_MICROSOFTPOWERPOINT" "$NEWPAGES")
  WORD=$(egrep -i "$KEYWORDS_MICROSOFTWORD" "$NEWPAGES")

  categorize "OFFICE" "Microsoft Office"
  categorize "ACCESS" "Microsoft Access"
  categorize "EXCEL" "Microsoft Excel"
  categorize "POWERPOINT" "Microsoft PowerPoint"
  categorize "WORD" "Microsoft Word"

  debug_end "Microsoft Office"

fi