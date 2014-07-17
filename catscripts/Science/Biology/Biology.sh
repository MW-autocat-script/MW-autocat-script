#!/bin/bash

debug_start "Biology"

BIOLOGYDIR="./catscripts/Science/Biology"

$BIOLOGYDIR/Animals/Animals.sh
$BIOLOGYDIR/Cytology/Cytology.sh

debug_end "Biology"