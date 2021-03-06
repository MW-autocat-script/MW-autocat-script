#!/bin/bash

PROFESSIONALWRESTLINGDIR="./catscripts/Entertainment/Professional_wrestling"

KEYWORDS_PROFESSIONALWRESTLING="Pro(|fessional)(| )wrestling"

if [ "$1" == "" ];
then

  debug_start "Professional wrestling"

  . $PROFESSIONALWRESTLINGDIR/Professional_wrestlers/ProfessionalWrestlers.sh #KEYWORDS_PROFESSIONALWRESTLERS_ALL

  KEYWORDS_PROFESSIONALWRESTLING_EXCLUDE="$KEYWORDS_PROFESSIONALWRESTLERS_ALL"
  KEYWORDS_PROFESSIONALWRESTLING_ALL="$KEYWORDS_PROFESSIONALWRESTLING|$KEYWORDS_PROFESSIONALWRESTLERS_ALL"

  PROFESSIONALWRESTLING=$(egrep -i "$KEYWORDS_PROFESSIONALWRESTLING" "$NEWPAGES" | egrep -iv "$KEYWORDS_PROFESSIONALWRESTLING_EXCLUDE")

  categorize "PROFESSIONALWRESTLING" "Professional wrestling"

  debug_end "Professional wrestling"

fi

if [ "$1" != "" ];
then

  . $PROFESSIONALWRESTLINGDIR/Professional_wrestlers/ProfessionalWrestlers.sh  norun #KEYWORDS_PROFESSIONALWRESTLERS_ALL

  KEYWORDS_PROFESSIONALWRESTLING_EXCLUDE="$KEYWORDS_PROFESSIONALWRESTLERS_ALL"
  KEYWORDS_PROFESSIONALWRESTLING_ALL="$KEYWORDS_PROFESSIONALWRESTLING|$KEYWORDS_PROFESSIONALWRESTLERS_ALL"

fi




  
