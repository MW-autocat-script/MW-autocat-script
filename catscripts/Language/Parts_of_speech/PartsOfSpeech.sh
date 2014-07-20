#!/bin/bash

KEYWORDS_PARTSOFSPEECH="\b(pro|)noun(|s)\b|\b(ad|)verb(|s)\b|adjective|preposition|conjunction|participle|interjection|part(|s)(| )of(| )speech"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Parts of speech"

  SPEECH=$(egrep -i "$KEYWORDS_PARTSOFSPEECH" newpages.txt)

  if [ "$SPEECH" != "" ];
  then
    printf "%s" "$SPEECH" > PartsOfSpeech.txt
    export CATFILE="PartsOfSpeech.txt"
    export CATNAME="Parts of speech"
    $CATEGORIZE
    rm PartsOfSpeech.txt
    unset SPEECH
  fi

  debug_end "Parts of speech"

fi