#!/bin/bash

KEYWORDS_HEARTDISEASE="Heart(| )disease"

if [ "$1" == "" ]; #Normal operation
then
  
  debug_start "Heart disease"

  HEARTDISEASE=$(egrep -i "$KEYWORDS_HEARTDISEASE" "$NEWPAGES")

  categorize "HEARTDISEASE" "Heart disease"

  debug_end "Heart disease"

fi