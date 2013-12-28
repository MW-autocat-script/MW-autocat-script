#!/bin/bash

KEYWORDS_PANAMA="Panama"
KEYWORDS_PANAMACANAL="Panama(| )Canal"
KEYWORDS_PANAMACITY="Panama(| )City"
KEYWORDS_PANAMACITY_EXCLUDE="Panama(| )City(,|)(| )Fl"
KEYWORDS_PANAMA_EXCLUDE="$KEYWORDS_PANAMACANAL|$KEYWORDS_PANAMACITY"

if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Panama\n"
  fi

  PANAMA=`egrep -i "$KEYWORDS_PANAMA" newpages.txt | egrep -iv "$KEYWORDS_PANAMA_EXCLUDE"`
  PANAMACANAL=`egrep -i "$KEYWORDS_PANAMACANAL" newpages.txt`
  PANAMACITY=`egrep -i "$KEYWORDS_PANAMACITY" newpages.txt | egrep -iv "$KEYWORDS_PANAMACITY_EXCLUDE"`

  if [ "$PANAMA" != "" ];
  then
    printf "$PANAMA" > Panama.txt
    export CATFILE="Panama.txt"
    export CATNAME="Panama"
    $CATEGORIZE
    rm Panama.txt
    unset PANAMA
  fi

  if [ "$PANAMACANAL" != "" ];
  then
    printf "$PANAMACANAL" > PanamaCanal.txt
    export CATFILE="PanamaCanal.txt"
    export CATNAME="Panama Canal"
    $CATEGORIZE
    rm PanamaCanal.txt
    unset PANAMACANAL
  fi

  if [ "$PANAMACITY" != "" ];
  then
    printf "$PANAMACANAL" > PanamaCity.txt
    export CATFILE="PanamaCity.txt"
    export CATNAME="Panama City, Panama"
    $CATEGORIZE
    rm PanamaCity.txt
    unset PANAMACITY
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Panama\n"
  fi

fi