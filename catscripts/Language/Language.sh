#!/bin/bash

debug_start "Language"

LANGUAGEDIR="./catscripts/Language"

$LANGUAGEDIR/Non-English_languages/NonEnglish.sh 
$LANGUAGEDIR/Definitions/Definitions.sh
$LANGUAGEDIR/Synonyms/Synonyms.sh
$LANGUAGEDIR/Antonyms/Antonyms.sh
$LANGUAGEDIR/Ditloids/Ditloids.sh
$LANGUAGEDIR/Etymology/Etymology.sh
$LANGUAGEDIR/Acronyms/Acronyms.sh
$LANGUAGEDIR/Parts_of_speech/PartsOfSpeech.sh
$LANGUAGEDIR/Pronunciation/Pronunciation.sh
$LANGUAGEDIR/Rhyming/Rhyming.sh
$LANGUAGEDIR/Sign_language/Signlanguage.sh
$LANGUAGEDIR/Spelling/Spelling.sh

debug_end "Language"