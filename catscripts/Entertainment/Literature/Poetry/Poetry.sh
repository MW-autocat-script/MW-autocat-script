#!=/bin/bash

POETRYDIR="./catscripts/Entertainment/Literature/Poetry"
KEYWORDS_POETRY="Poem|poetry|haiku"

if [ "$1" == "" ];
then

  debug_start "Poetry"

  . $POETRYDIR/Beowulf/Beowulf.sh #KEYWORDS_BEOWULF

  KEYWORDS_POETRY_EXCLUDE="$KEYWORDS_BEOWULF"

  POETRY=$(egrep -i "$KEYWORDS_POETRY" "$NEWPAGES" | egrep -iv "$KEYWORDS_POETRY_EXCLUDE")

  categorize "POETRY" "Poetry"

  debug_end "Poetry"

else

  . $POETRYDIR/Beowulf/Beowulf.sh norun #KEYWORDS_BEOWULF

  KEYWORDS_POETRY_EXCLUDE="$KEYWORDS_BEOWULF"

fi