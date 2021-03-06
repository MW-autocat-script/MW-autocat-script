#!/bin/bash

SOFTWAREDIR="./catscripts/Technology/Computers/Software"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Software"

  . $SOFTWAREDIR/Computer_aided_design/CAD.sh #KEYWORDS_CAD_ALL
  . $SOFTWAREDIR/DVD_authoring/DVDauthoring.sh #KEYWORDS_DVDAUTHORING_ALL
  . $SOFTWAREDIR/Emulation_and_Virtualization/Emulation.sh #KEYWORDS_EMULATION_ALL
  . $SOFTWAREDIR/Multimedia_software/Multimedia.sh #KEYWORDS_MULTIMEDIASOFTWARE_ALL
  . $SOFTWAREDIR/Operating_systems/OperatingSystems.sh #KEYWORDS_OPERATINGSYSTEMS_ALL
  . $SOFTWAREDIR/Web_browsers/Webbrowsers.sh #KEYWORDS_WEBBROWSER_ALL
  . $SOFTWAREDIR/Office_applications/Officeapplications.sh #KEYWORDS_OFFICEAPPLICATIONS_ALL
  . $SOFTWAREDIR/Software_engineering/Softwareengineering.sh #KEYWORDS_SOFTWAREENGINEERING

  KEYWORDS_SOFTWARE="software|firmware"
  KEYWORDS_SOFTWARE_EXCLUDE="$KEYWORDS_CAD_ALL|$KEYWORDS_DVDAUTHORING_ALL|$KEYWORDS_EMULATION_ALL|$KEYWORDS_OPERATINGSYSTEMS_ALL|$KEYWORDS_MULTIMEDIASOFTWARE_ALL|$KEYWORDS_WEBBROWSER_ALL|$KEYWORDS_OFFICEAPPLICATIONS_ALL|$KEYWORDS_SOFTWAREENGINEERING"
  KEYWORDS_SOFTWARE_ALL="$KEYWORDS_SOFTWARE|$KEYWORDS_SOFTWARE_EXCLUDE"

  SOFTWARE=$(egrep -i "$KEYWORDS_SOFTWARE" "$NEWPAGES"| egrep -iv "$KEYWORDS_SOFTWARE_EXCLUDE")

  categorize "SOFTWARE" "Software"

  debug_end "Software"

else

  . $SOFTWAREDIR/Computer_aided_design/CAD.sh norun #KEYWORDS_CAD_ALL
  . $SOFTWAREDIR/DVD_authoring/DVDAuthoring.sh norun #KEYWORDS_DVDAUTHORING_ALL
  . $SOFTWAREDIR/Emulation_and_Virtualization/Emulation.sh norun #KEYWORDS_EMULATION_ALL
  . $SOFTWAREDIR/Multimedia_software/Multimedia.sh norun #KEYWORDS_MULTIMEDIASOFTWARE_ALL
  . $SOFTWAREDIR/Operating_systems/OperatingSystems.sh norun #KEYWORDS_OPERATINGSYSTEMS_ALL
  . $SOFTWAREDIR/Web_browsers/Webbrowsers.sh norun #KEYWORDS_WEBBROWSER_ALL
  . $SOFTWAREDIR/Office_applications/Officeapplications.sh norun #KEYWORDS_OFFICEAPPLICATIONS_ALL
  . $SOFTWAREDIR/Software_engineering/Softwareengineering.sh norun #KEYWORDS_SOFTWAREENGINEERING

  KEYWORDS_SOFTWARE="software|firmware"
  KEYWORDS_SOFTWARE_EXCLUDE="$KEYWORDS_CAD_ALL|$KEYWORDS_DVDAUTHORING_ALL|$KEYWORDS_EMULATION_ALL|$KEYWORDS_OPERATINGSYSTEMS_ALL|$KEYWORDS_MULTIMEDIASOFTWARE_ALL|$KEYWORDS_WEBBROWSER_ALL|$KEYWORDS_OFFICEAPPLICATIONS_ALL|$KEYWORDS_SOFTWAREENGINEERING"
  KEYWORDS_SOFTWARE_ALL="$KEYWORDS_SOFTWARE|$KEYWORDS_SOFTWARE_EXCLUDE"

fi