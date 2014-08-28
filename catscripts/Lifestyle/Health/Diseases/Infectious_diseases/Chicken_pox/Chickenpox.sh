#!/bin/bash

KEYWORDS_CHICKENPOX="chicken(| )pox"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Chicken pox"

  CHICKENPOX=$(egrep -i "$KEYWORDS_CHICKENPOX" "$NEWPAGES")

  categorize "CHICKENPOX" "Chicken pox"

  debug_end "Chicken pox"

fi