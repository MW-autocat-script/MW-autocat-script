#!/bin/bash

TVSERIESDIR="./catscripts/Entertainment/Television_series"

if [ "$1" == "" ];
then 
  . $TVSERIESDIR/DoctorWho.sh
  . $TVSERIESDIR/iCarly.sh 
fi

KEYWORDS_TELEVISIONSERIES="television(| )(series|show)"
KEYWORDS_TELEVISIONSERIES_EXCLUDE="$KEYWORDS_TELEVISIONSERIES_ICARLY|$KEYWORDS_DOCTORWHO"

if [ "$1" == "" ];
then 

  egrep -i "$KEYWORDS_TELEVISIONSERIES"  newpages.txt | egrep -iv "$KEYWORDS_TELEVISIONSERIES_EXCLUDE" >> Series.txt


  SERIES=`stat --print=%s Series.txt`

  if [ $SERIES -ne 0 ];
  then
    export CATFILE="Series.txt"
    export CATNAME="Television series"
    $CATEGORIZE
  fi

  rm Series.txt

fi