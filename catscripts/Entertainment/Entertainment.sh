#!/bin/bash

if [ "$DEBUG" == "yes" ];
then
  printf "Starting Entertainment\n" 
fi

CURRENTDIR="./catscripts/Entertainment"

$CURRENTDIR/Actors_and_actresses/Actors.sh
$CURRENTDIR/Board_games/BoardGames.sh
$CURRENTDIR/Video_games/VideoGames.sh
$CURRENTDIR/Franchises/Franchises.sh
$CURRENTDIR/Cartoons/Cartoons.sh
$CURRENTDIR/Music/Music.sh
$CURRENTDIR/Movies/Movies.sh
$CURRENTDIR/Puzzles/Puzzles.sh
$CURRENTDIR/Television_series/Televisionseries.sh

if [ "$DEBUG" == "yes" ];
then
  printf "Finished Entertainment\n" 
fi