#!/bin/bash

. ./catscripts/Technology/Computers/Computer_hardware/Computerhardware.sh norun

KEYWORDS_MACINTOSH="Apple(| )Macintosh|\bibook|Power(| )Mac|\bi(| )Mac|on(| )a(| )mac|\bmy(| )mac\b|for(| )a(| )mac\b"
KEYWORDS_MACINTOSH_EXCLUDE="$KEYWORDS_MACBOOKS"

if [ "$1" == "" ];
then

  debug_start "Macintosh"

  MACINTOSH=$(egrep -i "$KEYWORDS_MACINTOSH" "$NEWPAGES" | egrep -iv "$KEYWORDS_MACINTOSH_EXCLUDE")

  categorize "MACINTOSH" "Macintosh"

  debug_end "Macintosh"

fi