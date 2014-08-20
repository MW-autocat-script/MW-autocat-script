#!/bin/bash

OFFICEDIR="./catscripts/Technology/Computers/Software/Office_applications"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Office applications"

  . $OFFICEDIR/Microsoft_Office/MicrosoftOffice.sh #KEYWORDS_MICROSOFTOFFICE_ALL

  KEYWORDS_OFFICEAPPLICATIONS="Office(| )suite|office(| )application|word(| )process(or|ing)"
  KEYWORDS_OFFICEAPPLICATIONS_EXCLUDE="$KEYWORDS_MICROSOFTOFFICE_ALL"
  KEYWORDS_OFFICEAPPLICATIONS_OTHER="Open(| )Office|Libre(| )Office"
  KEYWORDS_OFFICEAPPLICATIONS_ALL="$KEYWORDS_OFFICEAPPLICATIONS|$KEYWORDS_OFFICEAPPLICATIONS_OTHER|$KEYWORDS_OFFICEAPPLICATIONS_EXCLUDE"

  APPS=$(egrep -i "$KEYWORDS_OFFICEAPPLICATIONS|$KEYWORDS_OFFICEAPPLICATIONS_OTHER" "$NEWPAGES" | egrep -iv "$KEYWORDS_OFFICEAPPLICATIONS_EXCLUDE")

  if [ "$APPS" != "" ];
  then
    printf "%s" "$APPS" > Officeapps.txt
    export CATFILE="Officeapps.txt"
    export CATNAME="Office applications"
    $CATEGORIZE
    rm Officeapps.txt
    unset APPS
  fi

  debug_end "Office applications"

else

  . $OFFICEDIR/Microsoft_Office/MicrosoftOffice.sh norun #KEYWORDS_MICROSOFTOFFICE_ALL

  KEYWORDS_OFFICEAPPLICATIONS="Office(| )suite|office(| )application|word(| )process(or|ing)"
  KEYWORDS_OFFICEAPPLICATIONS_EXCLUDE="$KEYWORDS_MICROSOFTOFFICE_ALL"
  KEYWORDS_OFFICEAPPLICATIONS_OTHER="Open(| )Office|Libre(| )Office"
  KEYWORDS_OFFICEAPPLICATIONS_ALL="$KEYWORDS_OFFICEAPPLICATIONS|$KEYWORDS_OFFICEAPPLICATIONS_OTHER|$KEYWORDS_OFFICEAPPLICATIONS_EXCLUDE"

fi

#This is here to make ShellCheck ignore KEYWORDS_OFFICEAPPLICATIONS_ALL, which is used elsewhere

KEYWORDS_OFFICEAPPLICATIONS_ALL="$KEYWORDS_OFFICEAPPLICATIONS_ALL"