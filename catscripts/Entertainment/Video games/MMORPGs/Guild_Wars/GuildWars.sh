#!/bin/bash

cat newpages.txt | egrep -i 'Guild(| )War|PVX' >> GuildWars.txt

GUILDWARS=`stat --print=%s GuildWars.txt`

if [ $GUILDWARS -ne 0 ];
then
  export CATFILE="GuildWars.txt"
  export CATNAME="Guild Wars"
  ./catscripts/Categorize.sh
fi

rm GuildWars.txt