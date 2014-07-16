#!/bin/bash

debug_start "Entertainment franchises"

FRANCHISEDIR="./catscripts/Entertainment/Franchises"

$FRANCHISEDIR/Digimon/Digimon.sh
$FRANCHISEDIR/Pokémon/Pokémon.sh
$FRANCHISEDIR/Sonic_the_Hedgehog/Sonic.sh
$FRANCHISEDIR/Star\ Wars/StarWars.sh

debug_end "Entertainment franchises"