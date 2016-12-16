#!/bin/bash

readonly EDUCATIONDIR="./catscripts/Education"

if [ "$1" == "" ];
then

  debug_start "Education"

  . $EDUCATIONDIR/GCSE/GCSE.sh #KEYWORDS_GCSE_ALL
  . $EDUCATIONDIR/GED/GED.sh #KEYWORDS_GED_ALL

  debug_end "Education"

else

  . $EDUCATIONDIR/GCSE/GCSE.sh norun #KEYWORDS_GCSE_ALL
  . $EDUCATIONDIR/GED/GED.sh norun #KEYWORDS_GED_ALL

fi