#!/bin/bash

egrep -i 'Guild(| )War|PVX' newpages.txt >> GuildWars.txt

GUILDWARS=`stat --print=%s GuildWars.txt`

if [ $GUILDWARS -ne 0 ];
then
  export CATFILE="GuildWars.txt"
  export CATNAME="Guild Wars"
  $CATEGORIZE
fi

rm GuildWars.txt