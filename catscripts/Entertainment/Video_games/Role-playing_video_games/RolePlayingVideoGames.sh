#!/bin/bash

debug_start "Role-playing video games"

CURRENTDIR="./catscripts/Entertainment/Video_games/Role-playing_video_games"

$CURRENTDIR/Digimon_World_series/DigimonWorld.sh
$CURRENTDIR/DragonFable/DragonFable.sh #KEYWORDS_DRAGONFABLE_ALL
$CURRENTDIR/The_Last_Remnant/TheLastRemnant.sh
$CURRENTDIR/Final_Fantasy_series/FinalFantasy.sh
$CURRENTDIR/Star_Wars_Knights_of_the_Old_Republic/KOTOR.sh
$CURRENTDIR/Star_Wars_Knights_of_the_Old_Republic_II/KOTOR2.sh

debug_end "Role-playing video games"