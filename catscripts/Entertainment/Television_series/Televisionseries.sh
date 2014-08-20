#!/bin/bash

KEYWORDS_TELEVISIONSERIES="television(| )(series|show)"
TVSERIESDIR="./catscripts/Entertainment/Television_series"

if [ "$1" == "" ];
then 

  debug_start "Television series"

  . $TVSERIESDIR/Desperate_Housewives/DesperateHousewives.sh #KEYWORDS_DESPERATEHOUSEWIVES
  . $TVSERIESDIR/Doctor_Who/DoctorWho.sh #$KEYWORDS_DOCTORWHO
  . $TVSERIESDIR/iCarly/iCarly.sh #$KEYWORDS_TELEVISIONSERIES_ICARLY
  . $TVSERIESDIR/Smallville/Smallville.sh #KEYWORDS_SMALLVILLE
  . $TVSERIESDIR/Top_Gear/TopGear.sh #KEYWORDS_TOPGEAR

  KEYWORDS_TELEVISIONSERIES_EXCLUDE="$KEYWORDS_DESPERATEHOUSEWIVES|$KEYWORDS_TELEVISIONSERIES_ICARLY|$KEYWORDS_DOCTORWHO|$KEYWORDS_SMALLVILLE"
  SERIES=$(egrep -i "$KEYWORDS_TELEVISIONSERIES"  "$NEWPAGES" | egrep -iv "$KEYWORDS_TELEVISIONSERIES_EXCLUDE")

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

  . $TVSERIESDIR/Desperate_Housewives/DesperateHousewives.sh norun #KEYWORDS_DESPERATEHOUSEWIVES
  . $TVSERIESDIR/DoctorWho.sh norun #$KEYWORDS_DOCTORWHO
  . $TVSERIESDIR/iCarly.sh norun #$KEYWORDS_TELEVISIONSERIES_ICARLY
  . $TVSERIESDIR/Smallville/Smallville.sh norun #KEYWORDS_SMALLVILLE
  . $TVSERIESDIR/Top_Gear/TopGear.sh norun #KEYWORDS_TOPGEAR

fi