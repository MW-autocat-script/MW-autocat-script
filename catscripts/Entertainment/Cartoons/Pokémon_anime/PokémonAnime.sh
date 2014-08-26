#!/bin/bash

KEYWORDS_POKEMONANIME="\bAsh.+(Misty|Brock|May|Dawn|Iris|Pikachu|Pokemon|Pokémon|Poke'mon)|Ash Ketchum|(Misty|Brock|May|Dawn|Iris|Pokémon|Pikachu|Pokemon|Poke'mon).+\bAsh|(Pokémon|Pokemon|Poke'mon).+(cartoon|anime)|(Anime|cartoon).+(Pokemon|Pokémon|Poke'mon)"

if [ "$1" == "" ];
then

  debug_start "Pokémon anime"

  POKEMONANIME=$(egrep -i "$KEYWORDS_POKEMONANIME" "$NEWPAGES")

  categorize "POKEMONANIME" "Pokémon anime"

  debug_end "Pokémon anime"

fi