#!/bin/bash

OFFICEDIR="./catscripts/Technology/Computers/Software/Office_applications"

if [ "$1" == "" ]; #Normal operation
then

  . $OFFICEDIR/Microsoft_Office/MicrosoftOffice.sh #KEYWORDS_MICROSOFTOFFICE_ALL

  KEYWORDS_OFFICEAPPLICATIONS="Office(| )suite|office(| )application|word(| )process(or|ing)"
  KEYWORDS_OFFICEAPPLICATIONS_EXCLUDE="$KEYWORDS_MICROSOFTOFFICE_ALL"
  KEYWORDS_OFFICEAPPLICATIONS_OTHER="Open(| )Office|Libre(| )Office"
  KEYWORDS_OFFICEAPPLICATIONS_ALL="$KEYWORDS_OFFICEAPPLICATIONS|$KEYWORDS_OFFICEAPPLICATIONS_OTHER|$KEYWORDS_OFFICEAPPLICATIONS_EXCLUDE"

  egrep -i "$KEYWORDS_OFFICEAPPLICATIONS|$KEYWORDS_OFFICEAPPLICATIONS_OTHER" newpages.txt | egrep -iv "$KEYWORDS_OFFICEAPPLICATIONS_EXCLUDE" >> Officeapps.txt

  APPS=$(stat --print=%s Officeapps.txt)

  if [ $APPS -ne 0 ];
  then
    export CATFILE="Officeapps.txt"
    export CATNAME="Office applications"
    $CATEGORIZE
  fi

  rm Officeapps.txt

fi

if [ "$1" == "norun" ]; #Variables only
then

  . $OFFICEDIR/Microsoft_Office/MicrosoftOffice.sh norun #KEYWORDS_MICROSOFTOFFICE_ALL

  KEYWORDS_OFFICEAPPLICATIONS="Office(| )suite|office(| )application|word(| )process(or|ing)"
  KEYWORDS_OFFICEAPPLICATIONS_EXCLUDE="$KEYWORDS_MICROSOFTOFFICE_ALL"
  KEYWORDS_OFFICEAPPLICATIONS_OTHER="Open(| )Office|Libre(| )Office"
  KEYWORDS_OFFICEAPPLICATIONS_ALL="$KEYWORDS_OFFICEAPPLICATIONS|$KEYWORDS_OFFICEAPPLICATIONS_OTHER|$KEYWORDS_OFFICEAPPLICATIONS_EXCLUDE"

fi