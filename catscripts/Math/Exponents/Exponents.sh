#!/bin/bash

KEYWORDS_EXPONENTS="exponent|[0-9]{1,}(| )to(| )the(| )(-|)[0-9]{1,}(|st|nd|rd|th)(| )power|\^[0-9]{1,}"

if [ "$1" == "" ];
then

  debug_start "Exponents"

  EXPONENTS=$(egrep -i "$KEYWORDS_EXPONENTS" "$NEWPAGES")

  categorize "EXPONENTS" "Exponents"

  debug_end "Exponents"

fi
