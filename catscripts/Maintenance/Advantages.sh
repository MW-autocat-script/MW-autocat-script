#!/bin/bash

KEYWORDS_ADVANTAGES="What(| )are(| )(the|)(| )(adva(|n)tage|disadva(|n)tage)|What(| )is(| )the(| )(adva(|n)tage|disadva(|n)tage)|What(| )are(| )(|the)(| )(pros|cons)\b"

if [ "$1" == "" ];
then

  debug_start "Advantages and disadvantages"

  ADVANTAGES=$(egrep -i "$KEYWORDS_ADVANTAGES" "$NEWPAGES")

  categorize "ADVANTAGES" "Advantages and disadvantages"

  debug_end "Advantages and disadvantages"

fi