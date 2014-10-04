#!/bin/bash

KEYWORDS_WESTVIRGINIA="West(| )Virginia"
KEYWORDS_WESTVIRGINIA_ALL="$KEYWORDS_WESTVIRGINIA"

if [ "$1" == "" ];
then
  
  debug_start "West Virginia"

  WESTVIRGINIA=$(egrep -i "$KEYWORDS_WESTVIRGINIA" "$NEWPAGES")

  categorize "WESTVIRGINIA" "West Virginia"

  debug_end "West Virginia"

fi