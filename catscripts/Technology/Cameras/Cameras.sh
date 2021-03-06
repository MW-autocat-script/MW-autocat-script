#!/bin/bash

#This script is called from the following scripts:
# ./catscripts/Technology/Technology.sh (full run)
# ./catscripts/Lifestyle/Hobbies/Hobbies.sh (variables only)
# ./catscripts/Technology/Computers/Computer_hardware/Computerhardware.sh (variables only)

KEYWORDS_CAMERAS="Camera"
KEYWORDS_DIGITALCAMERAS="Digital(| )camera|camera(| )phone|Easy(| )share"
KEYWORDS_CHDK="CHDK"
KEYWORDS_WEBCAMS="Web(| )cam(|era)"
KEYWORDS_DIGITALCAMERAS_EXCLUDE="$KEYWORDS_CHDK|$KEYWORDS_WEBCAMS"
KEYWORDS_CAMERAS_EXCLUDE="$KEYWORDS_DIGITALCAMERAS|$KEYWORDS_DIGITALCAMERAS_EXCLUDE"
KEYWORDS_CAMERAS_ALL="$KEYWORDS_CAMERAS|$KEYWORDS_DIGITALCAMERAS|$KEYWORDS_CHDK|$KEYWORDS_WEBCAMS"

if [ "$1" == "" ];
then
  
  debug_start "Cameras"

  CAMERAS=$(egrep -i "$KEYWORDS_CAMERAS" "$NEWPAGES" | egrep -iv "$KEYWORDS_CAMERAS_EXCLUDE")
  DIGITALCAMERAS=$(egrep -i "$KEYWORDS_DIGITALCAMERAS" "$NEWPAGES" | egrep -iv "$KEYWORDS_DIGITALCAMERAS_EXCLUDE")
  CHDK=$(egrep -i "$KEYWORDS_CHDK" "$NEWPAGES")
  WEBCAMS=$(egrep -i "$KEYWORDS_WEBCAMS" "$NEWPAGES")

  categorize "CAMERAS" "Cameras"
  categorize "DIGITALCAMERAS" "Digital cameras"
  categorize "CHDK" "CHDK" 
  categorize "WEBCAMS" "Webcams"

  debug_end "Cameras"

fi