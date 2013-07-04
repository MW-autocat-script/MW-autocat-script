#!/bin/bash

if [ "$DEBUG" == "yes" ];
then
  printf "Starting Health\n" 
fi

CURRENTDIR="./catscripts/Lifestyle/Health"

$CURRENTDIR/Diseases/Diseases.sh
$CURRENTDIR/Drugs/Drugs.sh

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing Health\n" 
fi