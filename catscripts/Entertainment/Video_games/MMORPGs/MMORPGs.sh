#!/bin/bash
#Games that have been added elsewhere:
#
#Final Fantasy XI - in Role-playing games/Final Fantasy series

CURRENTDIR="./catscripts/Entertainment/Video_games/MMORPGs"

. $CURRENTDIR/AdventureQuest_Worlds/AdventureQuestWorlds.sh
. $CURRENTDIR/Anarchy_Online/AnarchyOnline.sh
. $CURRENTDIR/Cabal_Online/CabalOnline.sh
. $CURRENTDIR/Dead_Frontier/DeadFrontier.sh
. $CURRENTDIR/Dofus/Dofus.sh
. $CURRENTDIR/Eve_Online/EveOnline.sh
. $CURRENTDIR/Fiesta_Online/FiestaOnline.sh
. $CURRENTDIR/Flyff/Flyff.sh
. $CURRENTDIR/Free_Realms/FreeRealms.sh
. $CURRENTDIR/GhostX/GhostX.sh
. $CURRENTDIR/Guild_Wars/GuildWars.sh
. $CURRENTDIR/Karos_Online/KarosOnline.sh
. $CURRENTDIR/Mafia_Wars/MafiaWars.sh
. $CURRENTDIR/Panfu/Panfu.sh
. $CURRENTDIR/Poptropica/Poptropica.sh
. $CURRENTDIR/Runes_of_Magic/RunesofMagic.sh
. $CURRENTDIR/RuneScape/RuneScape.sh
. $CURRENTDIR/Sacred_Seasons/SacredSeasons.sh
. $CURRENTDIR/Star_Wars_The_Old_Republic/SWTOR.sh
. $CURRENTDIR/Tales_of_Pirates/TalesofPirates.sh
. $CURRENTDIR/Talisman_Online/TalismanOnline.sh
. $CURRENTDIR/Wizard101/Wizard101.sh
. $CURRENTDIR/World_of_Warcraft/WorldOfWarcraft.sh

export KEYWORDS_MMORPG="$KEYWORDS_MMORPG_AQW|$KEYWORDS_MMORPG_ANARCHY|$KEYWORDS_MMORPG_CABAL|$KEYWORDS_MMORPG_FRONTIER|$KEYWORDS_MMORPG_DOFUS|$KEYWORDS_MMORPG_EVE|$KEYWORDS_MMORPG_FIESTA|$KEYWORDS_MMORPG_FLYFF|$KEYWORDS_MMORPG_FREEREALMS|$KEYWORDS_MMORPG_GHOSTX|$KEYWORDS_MMORPG_GUILDWARS|$KEYWORDS_MMORPG_KAROS|$KEYWORDS_MMORPG_MAFIA|$KEYWORDS_MMORPG_PANFU|$KEYWORDS_MMORPG_POPTROPICA|$KEYWORDS_MMORPG_RUNESOFMAGIC|$KEYWORDS_MMORPG_RUNESCAPE|$KEYWORD_MMORPG_SACRED|$KEYWORDS_MMORPG_SWTOR|$KEYWORDS_MMORPG_PIRATES|$KEYWORDS_MMORPG_TALISMAN|$KEYWORDS_MMORPG_WIZARD101|$KEYWORDS_MMORPG_WOW"


egrep -i "MMORPG" newpages.txt | egrep -iv "$KEYWORDS_MMORPG" >> MMORPG.txt

MMORPG=`stat --print=%s MMORPG.txt`

if [ $MMORPG -ne 0 ];
then
  export CATFILE="MMORPG.txt"
  export CATNAME="MMORPGs"
  $CATEGORIZE
fi

if [ $MMORPG -eq 0 ];
then
  echo "MMORPGs is empty"
fi

rm MMORPG.txt