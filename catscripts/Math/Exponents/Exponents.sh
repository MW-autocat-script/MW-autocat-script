#!/bin/bash

KEYWORDS_EXPONENTS="exponent|[0-9]{1,}(| )to(| )the(| )(-|)[0-9]{1,}(|st|nd|rd|th)(| )power|\^[0-9]{1,}"

if [ "$1" == "" ];
then

  debug_start "Exponents"

  EXPONENTS="$(egrep -i "$KEYWORDS_EXPONENTS" "$NEWPAGES")"

  if [ "$EXPONENTS" != "" ];
  then
    printf "%s" "$EXPONENTS" > Exponents.txt
    export CATFILE="Exponents.txt"
    export CATNAME="Exponents"
    $CATEGORIZE
    rm Exponents.txt
    unset EXPONENTS
  fi

  debug_end "Exponents"

fi
