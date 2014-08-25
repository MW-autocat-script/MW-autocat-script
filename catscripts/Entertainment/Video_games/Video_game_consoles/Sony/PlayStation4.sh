#!/bin/bash

KEYWORDS_PS4="\bPS(| )(4|four)|Play(| )Station(| )(4|four)"

if [ "$1" == "" ];
then

  debug_start "PlayStation 4"

  PS4=$(egrep -i "$KEYWORDS_PS4" "$NEWPAGES")

  categorize "PS4" "PlayStation 4"

  debug_end "PLayStation 4"

fi