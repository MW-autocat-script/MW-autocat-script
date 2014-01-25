#!/bin/bash

EDUCATIONDIR="./catscripts/Education"

if [ "$1" == "" ];
then

  . $EDUCATIONDIR/GCSE/GCSE.sh #KEYWORDS_GCSE_ALL

else

  . $EDUCATIONDIR/GCSE/GCSE.sh norun #KEYWORDS_GCSE_ALL

fi