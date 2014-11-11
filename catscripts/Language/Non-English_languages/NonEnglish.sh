#!/bin/bash

NONENGDIR="./catscripts/Language/Non-English_languages"

debug_start "Non-English languages"

$NONENGDIR/English_to_Arabic/EnglishtoArabic.sh
$NONENGDIR/English_to_French/EnglishtoFrench.sh
$NONENGDIR/English_to_German/EnglishtoGerman.sh
$NONENGDIR/English_to_Greek/EnglishtoGreek.sh
$NONENGDIR/English_to_Italian/EnglishtoItalian.sh
$NONENGDIR/English_to_Korean/EnglishtoKorean.sh
$NONENGDIR/English_to_Latin/EnglishtoLatin.sh
$NONENGDIR/English_to_Navajo/EnglishtoNavajo.sh
$NONENGDIR/English_to_Polish/EnglishToPolish.sh #KEYWORDS_ENGLISHTOPOLISH_ALL
$NONENGDIR/English_to_Spanish/EnglishtoSpanish.sh

debug_end "Non-English languages"
