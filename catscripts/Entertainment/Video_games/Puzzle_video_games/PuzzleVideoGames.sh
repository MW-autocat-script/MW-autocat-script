#!/bin/bash

PUZZLEVIDEOGAMESDIR="$VIDEOGAMEDIR/Puzzle_video_games"

if [ "$1" == "" ];
then
  
  debug_start "Puzzle video games"

  . $PUZZLEVIDEOGAMESDIR/Alxemy/Alxemy.sh #KEYWORDS_ALXEMY_ALL

  debug_end "Puzzle video games"

fi