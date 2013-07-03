#!/bin/bash

egrep -i '\bnoun(|s)\b|pronoun(|s)\b|\bverb(|s)\b|adverb|adjective|preposition|conjunction|participle|interjection|part(|s)(| )of(| )speech' newpages.txt >> PartsOfSpeech.txt

SPEECH=`stat --print=%s PartsOfSpeech.txt`

if [ $SPEECH -ne 0 ];
then
  export CATFILE="PartsOfSpeech.txt"
  export CATNAME="Parts of speech"
  $CATEGORIZE
fi

rm PartsOfSpeech.txt
