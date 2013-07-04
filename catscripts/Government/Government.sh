#!/bin/bash 

if [ "$DEBUG" == "yes" ];
then
  printf "Starting Government\n" 
fi

CURRENTDIR="./catscripts/Government"

$CURRENTDIR/Countries/Countries.sh
$CURRENTDIR/United_Kingdom/UnitedKingdom.sh
$CURRENTDIR/United_Nations/UnitedNations.sh

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing Government\n" 
fi