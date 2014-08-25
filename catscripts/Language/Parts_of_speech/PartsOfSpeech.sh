#!/bin/bash

KEYWORDS_PARTSOFSPEECH="\b(pro|)noun(|s)\b|\b(ad|)verb(|s)\b|adjective|preposition|conjunction|participle|interjection|part(|s)(| )of(| )speech"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Parts of speech"

  SPEECH=$(egrep -i "$KEYWORDS_PARTSOFSPEECH" "$NEWPAGES")

  categorize "SPEECH" "Parts of speech"

  debug_end "Parts of speech"

fi