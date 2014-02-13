#!/bin/bash

. ./catscripts/Technology/Computers/Computer_hardware/Computerhardware.sh norun

KEYWORDS_MACINTOSH="Apple(| )Macintosh|\bibook|Power(| )Mac|\bi(| )Mac|on(| )a(| )mac|\bmy(| )mac\b|for(| )a(| )mac\b"
KEYWORDS_MACINTOSH_EXCLUDE="$KEYWORDS_MACBOOKS"

if [ "$1" == "" ];
then

  debug_start "Macintosh"

  MACINTOSH="$(egrep -i "$KEYWORDS_MACINTOSH" newpages.txt | egrep -iv "$KEYWORDS_MACINTOSH_EXCLUDE")"

  if [ "$MACINTOSH" != "" ];
  then
    printf "%s" "$MACINTOSH" > Macintosh.txt
    export CATFILE="Macintosh.txt"
    export CATNAME="Macintosh"
    $CATEGORIZE
    rm Macintosh.txt
    unset MACINTOSH
  fi

  debug_end "Macintosh"

fi