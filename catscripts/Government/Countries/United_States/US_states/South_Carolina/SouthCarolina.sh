#!/bin/bash

KEYWORDS_SOUTHCAROLINA="South(| )Carolina|, S(|\.)C(|\.)\b"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "South Carolina"

  SOUTHCAROLINA=$(egrep -i "$KEYWORDS_SOUTHCAROLINA" newpages.txt)

  if [ "$SOUTHCAROLINA" != "" ];
  then
    printf "%s" "$SOUTHCAROLINA" > SouthCarolina.txt
    export CATFILE="SouthCarolina.txt"
    export CATNAME="South Carolina"
    $CATEGORIZE
    rm SouthCarolina.txt
    unset SOUTHCAROLINA
  fi

  debug_end "South Carolina"

fi