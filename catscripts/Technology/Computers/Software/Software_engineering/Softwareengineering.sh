#!/bin/bash

KEYWORDS_SOFTWAREENGINEERING="Software(| )(engineer|design|develop)"

if [ "$1" ==  "" ]; #Normal operation
then

  debug_start "Software engineering"
  
  SOFTWAREENG=$(egrep -i "$KEYWORDS_SOFTWAREENGINEERING" "$NEWPAGES")

  categorize "SOFTWAREENG" "Software engineering"

  debug_end "Software engineering"

fi