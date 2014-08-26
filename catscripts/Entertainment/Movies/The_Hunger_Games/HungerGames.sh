#!/bin/bash

KEYWORDS_HUNGERGAMES="Hunger(| )Game|Peeta|Everdeen|Katniss|Haymitch|Nightlock"

if [ "$1" == "" ];
then

  debug_start "The Hunger Games"

  HUNGER=$(egrep -i "$KEYWORDS_HUNGERGAMES" "$NEWPAGES")

  categorize "HUNGER" "The Hunger Games"

  debug_end "The Hunger Games"

fi