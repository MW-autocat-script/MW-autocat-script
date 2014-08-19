#!/bin/bash

SCIENCEDIR="./catscripts/Science"

debug_start "Science"

$SCIENCEDIR/Astronomy/Astronomy.sh
$SCIENCEDIR/Biology/Biology.sh
$SCIENCEDIR/Chemistry/Chemistry.sh
$SCIENCEDIR/Geography_and_geology/Geography.sh
$SCIENCEDIR/Physics/Physics.sh
$SCIENCEDIR/Scientists/Scientists.sh

debug_end "Science"