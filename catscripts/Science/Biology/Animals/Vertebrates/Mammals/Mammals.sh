#!/bin/bash

MAMMALDIR="./catscripts/Science/Biology/Animals/Vertebrates/Mammals"
KEYWORDS_MAMMALS="mammal"

if [ "$1" == "" ];
then

  debug_start "Mammals"

  . $MAMMALDIR/Dolphins/Dolphins.sh #KEYWORDS_DOLPHINS

  KEYWORDS_MAMMALS_EXCLUDE="$KEYWORDS_DOLPHINS"

  MAMMALS=$(egrep -i "$KEYWORDS_MAMMALS" "$NEWPAGES" | egrep -iv "$KEYWORDS_MAMMALS_EXCLUDE" )

  if [ "$MAMMALS" != "" ];
  then
    printf "%s" "$MAMMALS" > Mammals.txt
    export CATFILE="Mammals.txt"
    export CATNAME="Mammals"
    $CATEGORIZE
    rm Mammals.txt
    unset MAMMALS
  fi

  debug_end "Mammals"

else

  . $MAMMALDIR/Dolphins/Dolphins.sh norun #KEYWORDS_DOLPHINS

  KEYWORDS_MAMMALS_EXCLUDE="$KEYWORDS_DOLPHINS"

fi