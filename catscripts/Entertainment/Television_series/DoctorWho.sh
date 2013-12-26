#!/bin/bash

KEYWORDS_DOCTORWHO="Doctor(| )Who|Dr(|\.)(| )Who|[0-9]{1,2}(th|st|rd|nd)(| )doctor|ninth(| )doctor|tenth(| )doctor|eleventh(| )doctor|twelth(| )doctor|Donna(| )Noble|doctor.+regenerate|doctor.+regenration|regnerate.+doctor|regeneration.+doctor"

if [ "$1" == "" ]; #Normal operation
then

  DOCTORWHO=`egrep -i "$KEYWORDS_DOCTORWHO" newpages.txt`

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Doctor Who\n"
  fi


  if [ "$DOCTORWHO" != "" ];
  then
    printf "$DOCTORWHO" > DoctorWho.txt
    export CATFILE="DoctorWho.txt"
    export CATNAME="Doctor Who"
    $CATEGORIZE
    rm DoctorWho.txt
    unset DOCTORWHO
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Doctor Who\n"
  fi

fi