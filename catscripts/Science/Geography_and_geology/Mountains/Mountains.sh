#!/bin/bash

CURRENTDIR="./catscripts/Science/Geography_and_geology/Mountains"
KEYWORDS_MOUNTAINS="Mountain"

if [ "$1" == "" ];
then

  debug_start "Mountains"

  . $CURRENTDIR/Andes/Andes.sh #KEYWORDS_ANDES
  . $CURRENTDIR/Appalachian_Mountains/Appalachian.sh #KEYWORDS_APPALACHIAN
  . $CURRENTDIR/Himalayas/Himalayas.sh #KEYWORDS_HIMALAYAS_ALL
  . $CURRENTDIR/Rocky_Mountains/RockyMountains.sh #KEYWORDS_ROCKYMOUNTAINS

  KEYWORDS_MOUNTAINS_EXCLUDE="$KEYWORDS_ANDES|$KEYWORDS_APPALACHIAN|$KEYWORDS_HIMALAYAS_ALL|$KEYWORDS_ROCKYMOUNTAINS"
  KEYWORDS_MOUNTAINS_ALL="$KEYWORDS_MOUNTAINS|$KEYWORDS_ANDES|$KEYWORDS_APPALACHIAN|$KEYWORDS_HIMALAYAS_ALL|$KEYWORDS_ROCKYMOUNTAINS"

  MOUNTAINS=$(egrep -i "$KEYWORDS_MOUNTAINS" "$NEWPAGES" | egrep -iv "$KEYWORDS_MOUNTAINS_EXCLUDE")

  if [ "$MOUNTAINS" != "" ];
  then
    printf "%s" "$MOUNTAINS" > Mountains.txt
    export CATFILE="Mountains.txt"
    export CATNAME="Mountains"
    $CATEGORIZE
    rm Mountains.txt
    unset MOUNTAINS
  fi

  debug_end "Mountains"

else

  . $CURRENTDIR/Andes/Andes.sh norun #KEYWORDS_ANDES
  . $CURRENTDIR/Appalachian_Mountains/Appalachian.sh norun #KEYWORDS_APPALACHIAN
  . $CURRENTDIR/Himalayas/Himalayas.sh norun #KEYWORDS_HIMALAYAS_ALL
  . $CURRENTDIR/Rocky_Mountains/RockyMountains.sh norun #KEYWORDS_ROCKYMOUNTAINS

  KEYWORDS_MOUNTAINS_ALL="$KEYWORDS_MOUNTAINS|$KEYWORDS_ANDES|$KEYWORDS_APPALACHIAN|$KEYWORDS_HIMALAYAS_ALL|$KEYWORDS_ROCKYMOUNTAINS"

fi

#This is here so ShellCheck won't complain about KEYWORDS_MOUNTAINS_ALL, which is used elsewhere
KEYWORDS_MOUNTAINS_ALL="$KEYWORDS_MOUNTAINS_ALL"