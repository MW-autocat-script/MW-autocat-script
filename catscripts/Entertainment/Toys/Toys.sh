#!/bin/bash

TOYDIR="./catscripts/Entertainment/Toys"

debug_start "Toys"

$TOYDIR/Build-A-Bear/BuildABear.sh #KEYWORDS_BUILDABEAR
$TOYDIR/Hot_Wheels/HotWheels.sh #KEYWORDS_HOTWHEELS_ALL
$TOYDIR/Tamagotchi/Tamagotchi.sh #KEYWORDS_TAMAGOTCHI

debug_end "Toys"