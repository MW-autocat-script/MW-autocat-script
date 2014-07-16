#!/bin/bash

debug_start "Movies"

MOVIESDIR="./catscripts/Entertainment/Movies"

$MOVIESDIR/Ghostbusters/Ghostbusters.sh
$MOVIESDIR/Godzilla/Godzilla.sh
$MOVIESDIR/Harry_Potter/HarryPotter.sh
$MOVIESDIR/The_Hunger_Games/HungerGames.sh
$MOVIESDIR/Jurassic_Park_movies/JurassicPark.sh
$MOVIESDIR/The_Lion_King/TheLionKing.sh
$MOVIESDIR/Shrek/Shrek.sh
$MOVIESDIR/Star\ Wars\ movies/StarWarsMovies.sh
$MOVIESDIR/Toy_Story_movies/ToyStory.sh

debug_end "Movies"
