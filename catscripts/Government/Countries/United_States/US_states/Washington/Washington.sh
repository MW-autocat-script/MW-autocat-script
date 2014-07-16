#!/bin/bash

KEYWORDS_WASHINGTON="Washington"
KEYWORDS_WASHINGTON_EXCLUDE="(George|General|President|Martha|King|Abraham)(| )Washington|Washington(|,)(| )D(|\.)C(|\.)|District(| )of(| )columbia|Washington(| )Parkway|Denzel(| )Washington|Booker(| )T(|\.)(| )Washington|Washington(| )Post|Washington(| )Redskins|Washington(| )Monument|Washington(| )Capitals|FBI_Washington|March(| )on(| )Washington|Washington(| )Irving"

if [ "$1" == "" ];
then
  
  debug_start "Washington"

  WASHINGTON=$(egrep -i "$KEYWORDS_WASHINGTON" newpages.txt | egrep -iv "$KEYWORDS_WASHINGTON_EXCLUDE")

  if [ "$WASHINGTON" != "" ];
  then
    printf "%s" "$WASHINGTON" > Washington.txt
    export CATFILE="Washington.txt"
    export CATNAME="Washington"
    $CATEGORIZE
    rm Washington.txt
    unset WASHINGTON
  fi

  debug_end "Washington"

fi