#!/bin/bash

KEYWORDS_MYSPACE="Myspace"

if [ "$1" == "" ];
then

  debug_start "Myspace"

  MYSPACE=$(egrep -i "$KEYWORDS_MYSPACE" "$NEWPAGES")

  categorize "MYSPACE" "Myspace"

  debug_end "Myspace"

fi