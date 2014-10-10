#!/bin/bash

KEYWORDS_UNRECOGNIZEDCOUNTRIES="unrecognized(| )countr(y|ies)|Sealand|Seborga|micronation"

if [ "$1" == "" ];
then

  debug_start "Unrecognized countries"

  . ./catscripts/Government/Countries/Unrecognized_countries/Taiwan/Taiwan.sh #KEYWORDS_TAIWAN

  KEYWORDS_UNRECOGNIZEDCOUNTRIES_EXCLUDE="$KEYWORDS_TAIWAN"

  UNRECOGNIZED=$(egrep -i "$KEYWORDS_UNRECOGNIZEDCOUNTRIES" "$NEWPAGES" | egrep -iv "$KEYWORDS_UNRECOGNIZEDCOUNTRIES_EXCLUDE")

  categorize "UNRECOGNIZED" "Unrecognized countries"

  debug_end "Unrecognized countries"

else

  . ./catscripts/Government/Countries/Unrecognized_countries/Taiwan/Taiwan.sh norun #KEYWORDS_TAIWAN

fi
