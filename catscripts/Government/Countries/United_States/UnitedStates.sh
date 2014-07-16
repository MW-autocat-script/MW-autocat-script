#!/bin/bash

debug_start "United States"

UNITEDSTATESDIR="./catscripts/Government/Countries/United_States"

$UNITEDSTATESDIR/US_military/USmilitary.sh #KEYWORDS_USMILITARY_ALL
$UNITEDSTATESDIR/US_Presidents/Presidents.sh
$UNITEDSTATESDIR/US_states/States.sh
$UNITEDSTATESDIR/Puerto_Rico/PuertoRico.sh

debug_end "United States"