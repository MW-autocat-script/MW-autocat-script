#!/bin/bash

TOYDIR="./catscripts/Entertainment/Toys"

debug_start "Toys"

$TOYDIR/Build-A-Bear/BuildABear.sh #KEYWORDS_BUILDABEAR
$TOYDIR/Tamagotchi/Tamagotchi.sh #KEYWORDS_TAMAGOTCHI

debug_end "Toys"