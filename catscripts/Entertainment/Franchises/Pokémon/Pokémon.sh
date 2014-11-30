#!/bin/bash

POKEMONDIR="./catscripts/Entertainment/Franchises/Pokémon"

if [ "$1" == "" ];
then

  debug_start "Pokémon"

  . $POKEMONDIR/Pokémon_species/PokémonSpecies.sh #KEYWORDS_POKEMONSPECIES_ALL

  ./catscripts/Entertainment/Video_games/Video_games_by_series/Pokémon\ games/PokémonGames.sh norun #KEYWORDS_POKEMONGAMES_ALL

  KEYWORDS_POKEMON="(Pokémon|Pokemon|Poke'mon)"
  KEYWORDS_POKEMON_EXCLUDE="$KEYWORDS_POKEMONGAMES_ALL|$KEYWORDS_POKEMONSPECIES_ALL|anime|\bAsh\b|episode"


  POKEMON=$(egrep -i "$KEYWORDS_POKEMON" "$NEWPAGES" | egrep -iv "$KEYWORDS_POKEMON_EXCLUDE")

  categorize "POKEMON" "Pokémon"

  debug_end "Pokémon"

fi
