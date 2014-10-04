#!/bin/bash

KEYWORDS_SOUTHCAROLINA="South(| )Carolina|, S(|\.)C(|\.)\b"
KEYWORDS_SOUTHCAROLINA_ALL="$KEYWORDS_SOUTHCAROLINA"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "South Carolina"

  SOUTHCAROLINA=$(egrep -i "$KEYWORDS_SOUTHCAROLINA" "$NEWPAGES")

  categorize "SOUTHCAROLINA" "South Carolina"

  debug_end "South Carolina"

fi