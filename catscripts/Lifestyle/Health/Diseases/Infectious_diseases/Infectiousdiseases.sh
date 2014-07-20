#!/bin/bash

debug_start "Infectious diseases"

INFECTIOUSDIR="./catscripts/Lifestyle/Health/Diseases/Infectious_diseases"

$INFECTIOUSDIR/Chicken_pox/Chickenpox.sh
$INFECTIOUSDIR/Flu/Flu.sh
$INFECTIOUSDIR/Polio/Polio.sh
$INFECTIOUSDIR/Smallpox/Smallpox.sh

debug_end "Infectious diseases"