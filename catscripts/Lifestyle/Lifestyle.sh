#!/bin/bash
if [ "$DEBUG" == "yes" ];
then
  printf "Starting Lifestyle\n" 
fi

LIFESTYLEDIR="./catscripts/Lifestyle"

. $LIFESTYLEDIR/Health/Health.sh
. $LIFESTYLEDIR/Hobbies/Hobbies.sh
. $LIFESTYLEDIR/Pets/Pets.sh
. $LIFESTYLEDIR/Religion/Religion.sh
. $LIFESTYLEDIR/Sports/Sports.sh
. $LIFESTYLEDIR/Sexuality/Sexuality.sh

if [ "$DEBUG" == "yes" ];
then
  printf "Finishing Lifestyle\n" 
fi