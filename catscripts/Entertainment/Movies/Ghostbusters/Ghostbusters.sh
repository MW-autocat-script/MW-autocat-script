#!/bin/bash

export KEYWORDS_MOVIES_GHOSTBUSTERS="Ghost(| )buster"

if [ "$1" == "" ];
then

  debug_start "Ghostbusters" #Who you gonna call? :)

  GHOSTBUSTER=$(egrep -i "$KEYWORDS_MOVIES_GHOSTBUSTERS" "$NEWPAGES")

  categorize "GHOSTBUSTER" "Ghostbusters"

  debug_end "Ghostbusters"

fi