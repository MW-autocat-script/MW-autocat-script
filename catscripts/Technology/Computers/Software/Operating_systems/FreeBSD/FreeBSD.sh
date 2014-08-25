#!/bin/bash

KEYWORDS_FREEBSD="Free(| )BSD"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "FreeBSD"

  FREEBSD=$(egrep -i "$KEYWORDS_FREEBSD" "$NEWPAGES")

  categorize "FREEBSD" "FreeBSD"

  debug_end "FreeBSD"

fi