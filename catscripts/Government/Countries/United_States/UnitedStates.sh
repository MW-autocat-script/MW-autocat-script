#!/bin/bash
if [ "$DEBUG" == "yes" ];
then
  printf "Starting United States\n" 
fi

UNITEDSTATESDIR="./catscripts/Government/Countries/United_States"

$UNITEDSTATESDIR/US_military/USmilitary.sh #KEYWORDS_USMILITARY_ALL
$UNITEDSTATESDIR/US_Presidents/Presidents.sh
$UNITEDSTATESDIR/US_states/States.sh
$UNITEDSTATESDIR/Puerto_Rico/PuertoRico.sh

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing United States\n" 
fi