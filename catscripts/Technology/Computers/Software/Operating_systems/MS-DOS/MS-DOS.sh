#!/bin/bash

KEYWORDS_MSDOS="\bMS(|-| )DOS|\bDOS\b"
KEYWORDS_MSDOS_EXCLUDE="Giovani dos Santos"
KEYWORDS_MSDOS_CASESENSITIVE_EXCLUDE="DoS"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "MS-DOS"

  MSDOS=$(egrep -i "$KEYWORDS_MSDOS" "$NEWPAGES" | egrep -iv "$KEYWORDS_MSDOS_EXCLUDE" | egrep -v "$KEYWORDS_MSDOS_CASESENSITIVE_EXCLUDE")

  categorize "MSDOS" "MS-DOS"

  debug_end "MS-DOS"

fi