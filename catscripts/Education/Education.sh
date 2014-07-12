#!/bin/bash

EDUCATIONDIR="./catscripts/Education"

if [ "$1" == "" ];
then

  debug_start "Education"

  . $EDUCATIONDIR/GCSE/GCSE.sh #KEYWORDS_GCSE_ALL

  debug_end "Education"

else

  . $EDUCATIONDIR/GCSE/GCSE.sh norun #KEYWORDS_GCSE_ALL

fi