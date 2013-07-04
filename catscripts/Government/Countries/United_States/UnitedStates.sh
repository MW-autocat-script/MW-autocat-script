#!/bin/bash
if [ "$DEBUG" == "yes" ];
then
  printf "Starting United States\n" 
fi

CURRENTDIR="./catscripts/Government/Countries/United_States"

$CURRENTDIR/US_military/USmilitary.sh
$CURRENTDIR/US_Presidents/Presidents.sh
$CURRENTDIR/US_states/States.sh

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing United States\n" 
fi