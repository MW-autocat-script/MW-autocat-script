#!/bin/bash

TOYDIR="./catscripts/Entertainment/Toys"

debug_start "Toys"

$TOYDIR/Bionicle/Bionicle.sh #KEYWORDS_BIONICLE_ALL
$TOYDIR/Build-A-Bear/BuildABear.sh #KEYWORDS_BUILDABEAR
$TOYDIR/Hello_Kitty/HelloKitty.sh #KEYWORDS_HELLOKITTY_ALL
$TOYDIR/Hot_Wheels/HotWheels.sh #KEYWORDS_HOTWHEELS_ALL
$TOYDIR/Tamagotchi/Tamagotchi.sh #KEYWORDS_TAMAGOTCHI
$TOYDIR/Webkinz/Webkinz.sh #KEYWORDS_WEBKINZ_ALL

debug_end "Toys"