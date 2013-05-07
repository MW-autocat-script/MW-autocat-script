#!/bin/bash

egrep -i "\bAsh.+(Misty|Brock|May|Dawn|Iris|Pikachu|Pokemon|Pokémon|Poke'mon)" newpages.txt >> Anime.txt
egrep -i "(Misty|Brock|May|Dawn|Iris|Pokémon|Pikachu|Pokemon|Poke'mon).+\bAsh" newpages.txt >> Anime.txt
egrep -i "(Pokémon|Pokemon|Poke'mon).+(cartoon|anime)" newpages.txt >> Anime.txt
egrep -i "(Anime|cartoon).+(Pokemon|Pokémon|Poke'mon)" newpages.txt >> Anime.txt

ANIME=`stat --print=%s Anime.txt`

if [ $ANIME -ne 0 ];
then
  export CATFILE="Anime.txt"
  export CATNAME="Pokémon anime"
  $CATEGORIZE
fi

rm Anime.txt