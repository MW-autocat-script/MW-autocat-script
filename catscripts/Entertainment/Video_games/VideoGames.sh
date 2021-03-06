#!/bin/bash
VIDEOGAMEDIR="./catscripts/Entertainment/Video_games"
KEYWORDS_MOSHIMONSTERS="Moshi(| )Monsters|moshling|furnando|furando|meowford|dustbin(| )beaver|dustbinbeaver|dustin(| )beaver|meowford"

if [ "$1" == "" ];
then

  debug_start "Video games"

  MOSHIMONSTERS=$(egrep -i "$KEYWORDS_MOSHIMONSTERS" "$NEWPAGES")

  categorize "MOSHIMONSTERS" "Moshi Monsters"

  . $VIDEOGAMEDIR/Cheat_codes/CheatCodes.sh 
  . $VIDEOGAMEDIR/MMORPGs/MMORPGs.sh
  . $VIDEOGAMEDIR/Video_game_consoles/Consoles.sh
  . $VIDEOGAMEDIR/Video_games_by_series/VideoGameSeries.sh
  . $VIDEOGAMEDIR/Educational_video_games/EducationalGames.sh
  . $VIDEOGAMEDIR/Open-world_video_games/Openworld.sh
  . $VIDEOGAMEDIR/Puzzle_video_games/PuzzleVideoGames.sh
  . $VIDEOGAMEDIR/Role-playing_video_games/RolePlayingVideoGames.sh
  . $VIDEOGAMEDIR/Strategy_games/Strategy.sh

  debug_end "Video games"

else

  . $VIDEOGAMEDIR/Cheat_codes/CheatCodes.sh norun
  . $VIDEOGAMEDIR/MMORPGs/MMORPGs.sh norun
  . $VIDEOGAMEDIR/Video_game_consoles/Consoles.sh norun
  . $VIDEOGAMEDIR/Video_games_by_series/VideoGameSeries.sh norun
  . $VIDEOGAMEDIR/Educational_video_games/EducationalGames.sh norun
  . $VIDEOGAMEDIR/Open-world_video_games/Openworld.sh norun
  . $VIDEOGAMEDIR/Puzzle_video_games/PuzzleVideoGames.sh norun
  . $VIDEOGAMEDIR/Role-playing_video_games/RolePlayingVideoGames.sh norun
  . $VIDEOGAMEDIR/Strategy_games/Strategy.sh norun

fi