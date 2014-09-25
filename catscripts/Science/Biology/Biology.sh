#!/bin/bash

debug_start "Biology"

BIOLOGYDIR="./catscripts/Science/Biology"

$BIOLOGYDIR/Animals/Animals.sh
$BIOLOGYDIR/Cytology/Cytology.sh
$BIOLOGYDIR/Genetics/Genetics.sh #KEYWORDS_GENETICS

debug_end "Biology"