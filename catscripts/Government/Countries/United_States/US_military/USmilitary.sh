#!/bin/bash

KEYWORDS_USMILITARY="\bdod\b|Department(| )of(| )Defense|(US|U\.S(|\.)|United(| )States)(| )military"
KEYWORDS_USMC="(US|U\.S\.|United(| )States)(| )Marine(|s)(| )(|Corps)|USMC"
KEYWORDS_USARMY="(US|U\.S\.|United(| )States)(| )Army"
KEYWORDS_USAIRFORCE="(US|U\.S\.|United(| )States)(| )(|ch)Air(| )Force|USAF\b"
KEYWORDS_USNAVY="(US|U\.S\.|United(| )States)(| )Navy|\bUSN\b"
KEYWORDS_USCG="(US|U\.S\.|United(| )States)(| )Coast(| )Guard|USCG"
KEYWORDS_USMILITARY_EXCLUDE="$KEYWORDS_USMC|$KEYWORDS_USARMY|$KEYWORDS_USAIRFORCE|$KEYWORDS_USNAVY|$KEYWORDS_USCG|Lott Dod"
KEYWORDS_USMILITARY_ALL="$KEYWORDS_USMILITARY|$KEYWORDS_USMC|$KEYWORDS_USARMY|$KEYWORDS_USAIRFORCE|$KEYWORDS_USNAVY|$KEYWORDS_USCG"


if [ "$1" == "" ]; #Normal operation
then
  
  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting US military\n"
  fi

  USMC=`egrep -i "$KEYWORDS_USMC" newpages.txt`
  USARMY=`egrep -i "$KEYWORDS_USARMY" newpages.txt`
  USAF=`egrep -i "$KEYWORDS_USAIRFORCE" newpages.txt`
  USNAVY=`egrep -i "$KEYWORDS_USNAVY" newpages.txt`
  USCG=`egrep -i "$KEYWORDS_USCG" newpages.txt`
  USMILITARY=`egrep -i "$KEYWORDS_USMILITARY" newpages.txt | egrep -iv "$KEYWORDS_USMILITARY_EXCLUDE"`

  if [ "$USMC" != "" ];
  then
    printf "$USMC" > USMC.txt
    export CATFILE="USMC.txt"
    export CATNAME="United States Marine Corps"
    $CATEGORIZE
    rm USMC.txt
    unset USMC
  fi

  if [ "$USARMY" != "" ];
  then
    printf "$USARMY" > USArmy.txt
    export CATFILE="USArmy.txt"
    export CATNAME="United States Army"
    $CATEGORIZE
    rm USArmy.txt
    unset USARMY
  fi

  if [ "$USAF" != "" ];
  then
    printf "$USAF" > USAF.txt
    export CATFILE="USAF.txt"
    export CATNAME="United States Air Force"
    $CATEGORIZE
    rm USAF.txt
    unset USAF
  fi

  if [ "$USNAVY" != "" ];
  then
    printf "$USNAVY" > USNavy.txt
    export CATFILE="USNavy.txt"
    export CATNAME="United States Navy"
    $CATEGORIZE
    rm USNavy.txt
    unset USNAVY
  fi

  if [ "$USCG" != "" ];
  then
    printf "$USCG" > USCG.txt
    export CATFILE="USCG.txt"
    export CATNAME="United States Coast Guard"
    $CATEGORIZE
    rm USCG.txt
    unset USCG
  fi

  if [ "$USMILITARY" != "" ];
  then
    printf "$USMILITARY" > USMilitary.txt
    export CATFILE="USMilitary.txt"
    export CATNAME="US military"
    $CATEGORIZE
    rm USMilitary.txt
    unset USMILITARY
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing US military\n"
  fi

fi