#!/bin/bash

KEYWORDS_OPENBSD="Open(| )BSD"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "OpenBSD"

  OPENBSD=$(egrep -i "$KEYWORDS_OPENBSD" "$NEWPAGES")

  categorize "OPENBSD" "OpenBSD"

  debug_end "OpenBSD"

fi