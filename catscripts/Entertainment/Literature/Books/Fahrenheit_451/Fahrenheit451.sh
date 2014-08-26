#!/bin/bash

KEYWORDS_FAHRENHEIT451="Fa(h|)renheit(| )451"

if [ "$1" == "" ];
then
  
  debug_start "Fahrenheit 451"

  FAHRENHEIT=$(egrep -i "$KEYWORDS_FAHRENHEIT451" "$NEWPAGES")

  categorize "FAHRENHEIT" "Fahrenheit 451"

  debug_end "Fahrenheit 451"

fi