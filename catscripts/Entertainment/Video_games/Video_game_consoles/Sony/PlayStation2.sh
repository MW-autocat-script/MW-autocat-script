#!/bin/bash

KEYWORDS_PS2="PlayStation 2|Play Station 2|\bPS2|\bPS 2\b"
KEYWORDS_PS2_EXCLUDE="PS(| )2(| )(mouse|port|keyboard)"

if [ "$1" == "" ];
then

  debug_start "PlayStation 2"

  PS2="$(egrep -i "$KEYWORDS_PS2" newpages.txt | egrep -iv "$KEYWORDS_PS2_EXCLUDE")"

  if [ "$PS2" != "" ];
  then
    printf "%s" "$PS2" > PlayStation2.txt
    export CATFILE="PlayStation2.txt"
    export CATNAME="PlayStation 2"
    $CATEGORIZE
    rm PlayStation2.txt
    unset PS2
  fi

  debug_end "PlayStation 2"

fi