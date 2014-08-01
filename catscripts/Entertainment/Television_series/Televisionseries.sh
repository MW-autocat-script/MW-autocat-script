#!/bin/bash

KEYWORDS_TELEVISIONSERIES="television(| )(series|show)"
TVSERIESDIR="./catscripts/Entertainment/Television_series"

if [ "$1" == "" ];
then 

  debug_start "Television series"

  . $TVSERIESDIR/Doctor_Who/DoctorWho.sh #$KEYWORDS_DOCTORWHO
  . $TVSERIESDIR/iCarly/iCarly.sh #$KEYWORDS_TELEVISIONSERIES_ICARLY
  . $TVSERIESDIR/Smallville/Smallville.sh #KEYWORDS_SMALLVILLE

  KEYWORDS_TELEVISIONSERIES_EXCLUDE="$KEYWORDS_TELEVISIONSERIES_ICARLY|$KEYWORDS_DOCTORWHO|$KEYWORDS_SMALLVILLE"
  SERIES=$(egrep -i "$KEYWORDS_TELEVISIONSERIES"  newpages.txt | egrep -iv "$KEYWORDS_TELEVISIONSERIES_EXCLUDE")

  if [ "$SERIES" != "" ];
  then
    printf "%s" "$SERIES" > Series.txt
    export CATFILE="Series.txt"
    export CATNAME="Television series"
    $CATEGORIZE
    rm Series.txt
    unset SERIES
  fi

  debug_end "Television series"

else

  . $TVSERIESDIR/DoctorWho.sh norun #$KEYWORDS_DOCTORWHO
  . $TVSERIESDIR/iCarly.sh norun #$KEYWORDS_TELEVISIONSERIES_ICARLY
  . $TVSERIESDIR/Smallville/Smallville.sh norun #KEYWORDS_SMALLVILLE

fi