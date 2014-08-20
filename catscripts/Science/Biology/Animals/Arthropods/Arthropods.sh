#!/bin/bash

ARTHROPODDIR="./catscripts/Science/Biology/Animals/Arthropods"
KEYWORDS_ARTHROPODS="Arthropod"

if [ "$1" == "" ];
then

  debug_start "Arthropods"

  . $ARTHROPODDIR/Arachnids/Arachnids.sh
  . $ARTHROPODDIR/Insects/Insects.sh

  KEYWORDS_ARTHROPODS_EXCLUDE="arachnid|\bant(|s)\b"

  ARTHROPODS=$(egrep -i "$KEYWORDS_ARTHROPODS" "$NEWPAGES" | egrep -iv "$KEYWORDS_ARTHROPODS_EXCLUDE")

  if [ "$ARTHROPODS" != "" ];
  then
    printf "%s" "$ARTHROPODS" > Arthropods.txt
    export CATFILE="Arthropods.txt"
    export CATNAME="Arthropods"
    $CATEGORIZE
    rm Arthropods.txt
    unset ARTHROPODS
  fi

  debug_end "Arthropods"

else

  . $ARTHROPODDIR/Arachnids/Arachnids.sh norun
  . $ARTHROPODDIR/Insects/Insects.sh norun

fi