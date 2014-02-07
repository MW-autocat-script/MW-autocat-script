#!/bin/bash

KEYWORDS_POKEMONANIME="\bAsh.+(Misty|Brock|May|Dawn|Iris|Pikachu|Pokemon|Pokémon|Poke'mon)|Ash Ketchum|(Misty|Brock|May|Dawn|Iris|Pokémon|Pikachu|Pokemon|Poke'mon).+\bAsh|(Pokémon|Pokemon|Poke'mon).+(cartoon|anime)|(Anime|cartoon).+(Pokemon|Pokémon|Poke'mon)"

if [ "$1" == "" ];
then

  ANIME="$(egrep -i "$KEYWORDS_POKEMONANIME" newpages.txt)"

  if [ "$ANIME"  != "" ];
  then
    printf "%s" "$ANIME"  > Anime.txt
    export CATFILE="Anime.txt"
    export CATNAME="Pokémon anime"
    $CATEGORIZE
    rm Anime.txt
    unset ANIME
  fi

fi