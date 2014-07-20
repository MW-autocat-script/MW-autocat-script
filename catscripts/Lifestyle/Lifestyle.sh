#!/bin/bash

debug_start "Lifestyle"

LIFESTYLEDIR="./catscripts/Lifestyle"

. $LIFESTYLEDIR/Health/Health.sh
. $LIFESTYLEDIR/Hobbies/Hobbies.sh
. $LIFESTYLEDIR/Pets/Pets.sh
. $LIFESTYLEDIR/Religion/Religion.sh
. $LIFESTYLEDIR/Sports/Sports.sh
. $LIFESTYLEDIR/Sexuality/Sexuality.sh

debug_end "Lifestyle"