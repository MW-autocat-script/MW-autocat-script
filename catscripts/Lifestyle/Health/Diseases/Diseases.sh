#!/bin/bash

debug_start "Diseases"

DISEASEDIR="./catscripts/Lifestyle/Health/Diseases"

$DISEASEDIR/Asthma/Asthma.sh
$DISEASEDIR/Cancer/Cancer.sh
$DISEASEDIR/Infectious_diseases/Infectiousdiseases.sh
$DISEASEDIR/Heart_disease/HeartDisease.sh

debug_end "Diseases"