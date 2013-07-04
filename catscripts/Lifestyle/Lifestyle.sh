#!/bin/bash
if [ "$DEBUG" == "yes" ];
then
  printf "Starting Lifestyle\n" 
fi

CURRENTDIR="./catscripts/Lifestyle"

$CURRENTDIR/Health/Health.sh
$CURRENTDIR/Pets/Pets.sh
$CURRENTDIR/Religion/Religion.sh
$CURRENTDIR/Sports/Sports.sh
$CURRENTDIR/Sexuality/Sexuality.sh

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing Lifestyle\n" 
fi