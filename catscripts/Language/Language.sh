#!/bin/bash

if [ "$DEBUG" == "yes" ];
then
  printf "Starting Language\n" 
fi

CURRENTDIR="./catscripts/Language"

$CURRENTDIR/Non-English_languages/NonEnglish.sh 
$CURRENTDIR/Definitions/Definitions.sh
$CURRENTDIR/Synonyms/Synonyms.sh
$CURRENTDIR/Antonyms/Antonyms.sh
$CURRENTDIR/Ditloids/Ditloids.sh
$CURRENTDIR/Etymology/Etymology.sh
$CURRENTDIR/Acronyms/Acronyms.sh
$CURRENTDIR/Parts_of_speech/PartsOfSpeech.sh
$CURRENTDIR/Pronunciation/Pronunciation.sh
$CURRENTDIR/Rhyming/Rhyming.sh
$CURRENTDIR/Sign_language/Signlanguage.sh
$CURRENTDIR/Spelling/Spelling.sh

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing Language\n" 
fi