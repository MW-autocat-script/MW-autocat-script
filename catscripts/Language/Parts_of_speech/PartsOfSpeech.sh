#!/bin/bash

KEYWORDS_PARTSOFSPEECH="\bnoun(|s)\b|pronoun(|s)\b|\bverb(|s)\b|adverb|adjective|preposition|conjunction|participle|interjection|part(|s)(| )of(| )speech"


if [ "$1" == "" ]; #Normal operation
then

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Parts of Speech\n"
  fi

  SPEECH=`egrep -i "$KEYWORDS_PARTSOFSPEECH" newpages.txt`

  if [ "$SPEECH" != "" ];
  then
    printf "$SPEECH" > PartsOfSpeech.txt
    export CATFILE="PartsOfSpeech.txt"
    export CATNAME="Parts of speech"
    $CATEGORIZE
    rm PartsOfSpeech.txt
    unset SPEECH
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Parts of Speech\n"
  fi

fi