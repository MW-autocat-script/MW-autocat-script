#!/bin/bash

KEYWORDS_DEATHNOTE="Death(| )Note|(Light|Laito|Raito)(| )Yagami|Mello\b|Misa(| )(Misa|Amane)"

if [ "$1" == "" ];
then

  debug_start "Death Note"

  DEATHNOTE=$(egrep -i "$KEYWORDS_DEATHNOTE" "$NEWPAGES")

  if [ "$DEATHNOTE" != "" ];
  then
    printf "%s" "$DEATHNOTE" > DeathNote.txt
    export CATFILE="DeathNote.txt"
    export CATNAME="Death Note"
    $CATEGORIZE
    rm DeathNote.txt
    unset DEATHNOTE
  fi

  debug_end "Death Note"

fi