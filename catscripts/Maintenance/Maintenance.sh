#!/bin/bash 

debug_start "Maintenance scripts"

./catscripts/Maintenance/Advantages.sh
. ./catscripts/Maintenance/Compoundquestions.sh
. ./catscripts/Maintenance/Long.sh
. ./catscripts/Maintenance/Period.sh
./catscripts/Maintenance/Pornography.sh
./catscripts/Maintenance/Noninterrogative.sh
. ./catscripts/Maintenance/nostartint.sh

debug_end "Maintenance scripts"