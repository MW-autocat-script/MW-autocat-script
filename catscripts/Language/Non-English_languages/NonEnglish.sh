#!/bin/bash

NONENGDIR="./catscripts/Language/Non-English_languages"

debug_start "Non-English languages"

$NONENGDIR/English_to_Arabic/EnglishToArabic.sh
$NONENGDIR/English_to_Cambodian/EnglishToCambodian.sh #KEYWORDS_ENGLISHTOCAMBODIAN_ALL
$NONENGDIR/English_to_Chinese/EnglishToChinese.sh #KEYWORDS_ENGLISHTOCHINESE_ALL
$NONENGDIR/English_to_Czech/EnglishToCzech.sh #KEYWORDS_ENGLISHTOCZECH_ALL
$NONENGDIR/English_to_Danish/EnglishToDanish.sh #KEYWORDS_ENGLISHTODANISH_ALL
$NONENGDIR/English_to_Dutch/EnglishToDutch.sh #KEYWORDS_ENGLISHTODUTCH_ALL
$NONENGDIR/English_to_Estonian/EnglishToEstonian.sh #KEYWORDS_ENGLISHTOESTONIAN_ALL
$NONENGDIR/English_to_Farsi/EnglishToFarsi.sh #KEYWORDS_ENGLISHTOFARSI_ALL
$NONENGDIR/English_to_Finnish/EnglishToFinnish.sh #KEYWORDS_ENGLISHTOFINNISH_ALL
$NONENGDIR/English_to_French/EnglishToFrench.sh
$NONENGDIR/English_to_German/EnglishToGerman.sh
$NONENGDIR/English_to_Greek/EnglishToGreek.sh
$NONENGDIR/English_to_Hawaiian/EnglishToHawaiian.sh #KEYWORDS_ENGLISHTOHAWAIIAN_ALL
$NONENGDIR/English_to_Hebrew/EnglishToHebrew.sh #KEYWORDS_ENGLISHTOHEBREW_ALL
$NONENGDIR/English_to_Hungarian/EnglishToHungarian.sh #KEYWORDS_ENGLISHTOHUNGARIAN_ALL
$NONENGDIR/English_to_Indonesian/EnglishToIndonesian.sh #KEYWORDS_ENGLISHTOINDONESIAN_ALL
$NONENGDIR/English_to_Irish/EnglishToIrish.sh #KEYWORDS_ENGLISHTOIRISH_ALL
$NONENGDIR/English_to_Italian/EnglishToItalian.sh
$NONENGDIR/English_to_Japanese/EnglishToJapanese.sh #KEYWORDS_ENGLISHTOJAPANESE_ALL
$NONENGDIR/English_to_Klingon/EnglishToKlingon.sh #KEYWORDS_ENGLISHTOKLINGON_ALL
$NONENGDIR/English_to_Korean/EnglishToKorean.sh
$NONENGDIR/English_to_Latin/EnglishToLatin.sh
$NONENGDIR/English_to_Malay/EnglishToMalay.sh #KEYWORDS_ENGLISHTOMALAY_ALL
$NONENGDIR/English_to_Navajo/EnglishToNavajo.sh
$NONENGDIR/English_to_Polish/EnglishToPolish.sh #KEYWORDS_ENGLISHTOPOLISH_ALL
$NONENGDIR/English_to_Portuguese/EnglishToPortuguese.sh #KEYWORDS_ENGLISHTOPORTUGUESE_ALL
$NONENGDIR/English_to_Russian/EnglishToRussian.sh #KEYWORDS_ENGLISHTORUSSIAN_ALL
$NONENGDIR/English_to_Spanish/EnglishToSpanish.sh

debug_end "Non-English languages"
