#!/bin/bash

debug_start "Entertainment"

ENTERTAINMENTDIR="./catscripts/Entertainment"

$ENTERTAINMENTDIR/Actors_and_actresses/Actors.sh
$ENTERTAINMENTDIR/Board_games/BoardGames.sh
$ENTERTAINMENTDIR/Video_games/VideoGames.sh
$ENTERTAINMENTDIR/Franchises/Franchises.sh
$ENTERTAINMENTDIR/Cartoons/Cartoons.sh
$ENTERTAINMENTDIR/Literature/Literature.sh
$ENTERTAINMENTDIR/Music/Music.sh
$ENTERTAINMENTDIR/Movies/Movies.sh
$ENTERTAINMENTDIR/Puzzles/Puzzles.sh
. $ENTERTAINMENTDIR/Professional_wrestling/ProfessionalWrestling.sh
$ENTERTAINMENTDIR/Television_series/Televisionseries.sh

debug_end "Entertainment"