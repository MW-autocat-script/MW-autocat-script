#!/bin/bash

debug_start "Diseases"

DISEASEDIR="./catscripts/Lifestyle/Health/Diseases"

$DISEASEDIR/Asthma/Asthma.sh
$DISEASEDIR/Cancer/Cancer.sh
$DISEASEDIR/Heart_disease/HeartDisease.sh
$DISEASEDIR/Infectious_diseases/Infectiousdiseases.sh
$DISEASEDIR/Psoriasis/Psoriasis.sh #KEYWORDS_PSORIASIS_ALL

debug_end "Diseases"