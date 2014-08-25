#!/bin/bash

KEYWORDS_DITLOIDS="^[0-9]{1,}=[a-z]{1,1}\s|^[0-9]{1,}= [a-z]{1,1}\s|^[0-9]{1,}(| )=(| )[a-z]{1,1}\s|^[0-9]{1,}(| )=[a-z]{1,1}\s|ditloid"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Ditloids"

  DITLOIDS=$(egrep -i "$KEYWORDS_DITLOIDS" "$NEWPAGES")

  categorize "DITLOIDS" "Ditloids"

  debug_end "Ditloids"

fi