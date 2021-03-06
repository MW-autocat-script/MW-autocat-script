#!/bin/bash

debug_start "Movies"

MOVIESDIR="./catscripts/Entertainment/Movies"

. ./catscripts/Entertainment/Literature/Books/Diary_of_a_Wimpy_Kid/WimpyDiary.sh norun #KEYWORDS_WIMPYDIARY
. ./catscripts/Entertainment/Literature/Books/Dracula/Dracula.sh norun #KEYWORDS_DRACULA
. ./catscripts/Entertainment/Literature/Books/Dune/Dune.sh norun #KEYWORDS_DUNE_ALL
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
