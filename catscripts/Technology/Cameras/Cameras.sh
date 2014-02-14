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

  CAMERAS="$(egrep -i "$KEYWORDS_CAMERAS" newpages.txt | egrep -iv "$KEYWORDS_CAMERAS_EXCLUDE")"
  DIGITALCAMERAS="$(egrep -i "$KEYWORDS_DIGITALCAMERAS" newpages.txt | egrep -iv "$KEYWORDS_DIGITALCAMERAS_EXCLUDE")"
  CHDK="$(egrep -i "$KEYWORDS_CHDK" newpages.txt)"
  WEBCAMS="$(egrep -i "$KEYWORDS_WEBCAMS" newpages.txt)"

  if [ "$CAMERAS" != "" ];
  then
    printf "%s" "$CAMERAS" > Cameras.txt
    export CATFILE="Cameras.txt"
    export CATNAME="Cameras"
    $CATEGORIZE
    rm Cameras.txt
    unset CAMERAS
  fi

  if [ "$DIGITALCAMERAS" != "" ];
  then
    printf "%s" "$DIGITALCAMERAS" > DigitalCameras.txt
    export CATFILE="DigitalCameras.txt"
    export CATNAME="Digital cameras"
    $CATEGORIZE
    rm DigitalCameras.txt
    unset DIGITALCAMERAS
  fi

  if [ "$CHDK" != "" ];
  then
    printf "%s" "$CHDK" > CHDK.txt
    export CATFILE="CHDK.txt"
    export CATNAME="CHDK" 
    $CATEGORIZE
    rm CHDK.txt
    unset CHDK
  fi

  if [ "$WEBCAMS" != "" ];
  then
    printf "%s" "$WEBCAMS" > Webcams.txt
    export CATFILE="Webcams.txt"
    export CATNAME="Webcams"
    $CATEGORIZE
    rm Webcams.txt
    unset WEBCAMS
  fi

  debug_end "Cameras"

fi