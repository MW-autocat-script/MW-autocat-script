#!/bin/bash

KEYWORDS_WASHINGTON="Washington"
KEYWORDS_WASHINGTON_EXCLUDE="(George|General|President|Martha|King|Abraham)(| )Washington|Washington(|,)(| )D(|\.)C(|\.)|District(| )of(| )columbia|Washington(| )Parkway|Denzel(| )Washington|Booker(| )T(|\.)(| )Washington|Washington(| )Post|Washington(| )Redskins|Washington(| )Monument|Washington(| )Capitals|FBI_Washington|March(| )on(| )Washington|Washington(| )Irving"
KEYWORDS_WASHINGTON_ALL="$KEYWORDS_WASHINGTON"

if [ "$1" == "" ];
then
  
  debug_start "Washington"

  WASHINGTON=$(egrep -i "$KEYWORDS_WASHINGTON" "$NEWPAGES" | egrep -iv "$KEYWORDS_WASHINGTON_EXCLUDE")

  categorize "WASHINGTON" "Washington"

  debug_end "Washington"

fi