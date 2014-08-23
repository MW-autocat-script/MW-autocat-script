#!/bin/bash
#Games that have been added elsewhere:
#
#Final Fantasy XI - in Role-playing games/Final Fantasy series

KEYWORDS_MMORPG="MMORPG|Massively(| )multiplayer(| )online(| )role(|-| )playing(| )game"
MMORPGDIR="./catscripts/Entertainment/Video_games/MMORPGs"

if [ "$1" == "" ];
then

  debug_start "MMORPGs"

  . $MMORPGDIR/AdventureQuest_Worlds/AdventureQuestWorlds.sh
  . $MMORPGDIR/Anarchy_Online/AnarchyOnline.sh
  . $MMORPGDIR/Cabal_Online/CabalOnline.sh
  . $MMORPGDIR/Club_Penguin/ClubPenguin.sh
  . $MMORPGDIR/Dead_Frontier/DeadFrontier.sh
  . $MMORPGDIR/Dofus/Dofus.sh
  . $MMORPGDIR/Eve_Online/EveOnline.sh
  . $MMORPGDIR/Fantage/Fantage.sh
  . $MMORPGDIR/Fiesta_Online/FiestaOnline.sh
  . $MMORPGDIR/Flyff/Flyff.sh
  . $MMORPGDIR/Free_Realms/FreeRealms.sh
  . $MMORPGDIR/GhostX/GhostX.sh
  . $MMORPGDIR/Guild_Wars/GuildWars.sh
  . $MMORPGDIR/Karos_Online/KarosOnline.sh
  . $MMORPGDIR/Mafia_Wars/MafiaWars.sh
  . $MMORPGDIR/MapleStory/MapleStory.sh
  . $MMORPGDIR/Panfu/Panfu.sh
  . $MMORPGDIR/Poptropica/Poptropica.sh
  . $MMORPGDIR/Rohan/Rohan.sh
  . $MMORPGDIR/Runes_of_Magic/RunesofMagic.sh
  . $MMORPGDIR/RuneScape/RuneScape.sh
  . $MMORPGDIR/Sacred_Seasons/SacredSeasons.sh
  . $MMORPGDIR/Star_Wars_The_Old_Republic/SWTOR.sh
  . $MMORPGDIR/Tales_of_Pirates/TalesofPirates.sh
  . $MMORPGDIR/Talisman_Online/TalismanOnline.sh
  . $MMORPGDIR/Wizard101/Wizard101.sh
  . $MMORPGDIR/World_of_Warcraft/WorldOfWarcraft.sh

  export KEYWORDS_MMORPG_EXCLUDE="$KEYWORDS_MMORPG_AQW|$KEYWORDS_MMORPG_ANARCHY|$KEYWORDS_MMORPG_CABAL|$KEYWORDS_MMORPG_CLUBPENGUIN|$KEYWORDS_MMORPG_FRONTIER|$KEYWORDS_MMORPG_DOFUS|$KEYWORDS_MMORPG_EVE|$KEYWORDS_MMORPG_FANTAGE|$KEYWORDS_MMORPG_FIESTA|$KEYWORDS_MMORPG_FLYFF|$KEYWORDS_MMORPG_FREEREALMS|$KEYWORDS_MMORPG_GHOSTX|$KEYWORDS_MMORPG_GUILDWARS|$KEYWORDS_MMORPG_KAROS|$KEYWORDS_MMORPG_MAFIA|$KEYWORDS_MMORPG_MAPLESTORY|$KEYWORDS_MMORPG_PANFU|$KEYWORDS_MMORPG_POPTROPICA|$KEYWORDS_MMORPG_ROHAN|$KEYWORDS_MMORPG_RUNESOFMAGIC|$KEYWORDS_MMORPG_RUNESCAPE|$KEYWORD_MMORPG_SACRED|$KEYWORDS_MMORPG_SWTOR|$KEYWORDS_MMORPG_PIRATES|$KEYWORDS_MMORPG_TALISMAN|$KEYWORDS_MMORPG_WIZARD101|$KEYWORDS_MMORPG_WOW"

  MMORPG=$(egrep -i "$KEYWORDS_MMORPG" "$NEWPAGES" | egrep -iv "$KEYWORDS_MMORPG_EXCLUDE")

  categorize "MMORPG" "MMORPGs"

  debug_end "MMORPGs"

else

  . $MMORPGDIR/AdventureQuest_Worlds/AdventureQuestWorlds.sh norun
  . $MMORPGDIR/Anarchy_Online/AnarchyOnline.sh norun
  . $MMORPGDIR/Cabal_Online/CabalOnline.sh norun
  . $MMORPGDIR/Club_Penguin/ClubPenguin.sh norun
  . $MMORPGDIR/Dead_Frontier/DeadFrontier.sh norun
  . $MMORPGDIR/Dofus/Dofus.sh norun
  . $MMORPGDIR/Eve_Online/EveOnline.sh norun
  . $MMORPGDIR/Fantage/Fantage.sh norun
  . $MMORPGDIR/Fiesta_Online/FiestaOnline.sh norun
  . $MMORPGDIR/Flyff/Flyff.sh norun
  . $MMORPGDIR/Free_Realms/FreeRealms.sh norun
  . $MMORPGDIR/GhostX/GhostX.sh norun
  . $MMORPGDIR/Guild_Wars/GuildWars.sh norun
  . $MMORPGDIR/Karos_Online/KarosOnline.sh norun
  . $MMORPGDIR/Mafia_Wars/MafiaWars.sh norun
  . $MMORPGDIR/MapleStory/MapleStory.sh norun
  . $MMORPGDIR/Panfu/Panfu.sh norun
  . $MMORPGDIR/Poptropica/Poptropica.sh norun
  . $MMORPGDIR/Rohan/Rohan.sh norun
  . $MMORPGDIR/Runes_of_Magic/RunesofMagic.sh norun
  . $MMORPGDIR/RuneScape/RuneScape.sh norun
  . $MMORPGDIR/Sacred_Seasons/SacredSeasons.sh norun
  . $MMORPGDIR/Star_Wars_The_Old_Republic/SWTOR.sh norun
  . $MMORPGDIR/Tales_of_Pirates/TalesofPirates.sh norun
  . $MMORPGDIR/Talisman_Online/TalismanOnline.sh norun
  . $MMORPGDIR/Wizard101/Wizard101.sh norun
  . $MMORPGDIR/World_of_Warcraft/WorldOfWarcraft.sh norun

  export KEYWORDS_MMORPG_ALL="$KEYWORDS_MMORPG|$KEYWORDS_MMORPG_AQW|$KEYWORDS_MMORPG_ANARCHY|$KEYWORDS_MMORPG_CABAL|$KEYWORDS_MMORPG_CLUBPENGUIN|$KEYWORDS_MMORPG_FRONTIER|$KEYWORDS_MMORPG_DOFUS|$KEYWORDS_MMORPG_EVE|$KEYWORDS_MMORPG_FANTAGE|$KEYWORDS_MMORPG_FIESTA|$KEYWORDS_MMORPG_FLYFF|$KEYWORDS_MMORPG_FREEREALMS|$KEYWORDS_MMORPG_GHOSTX|$KEYWORDS_MMORPG_GUILDWARS|$KEYWORDS_MMORPG_KAROS|$KEYWORDS_MMORPG_MAFIA|$KEYWORDS_MMORPG_MAPLESTORY|$KEYWORDS_MMORPG_PANFU|$KEYWORDS_MMORPG_POPTROPICA|$KEYWORDS_MMORPG_ROHAN|$KEYWORDS_MMORPG_RUNESOFMAGIC|$KEYWORDS_MMORPG_RUNESCAPE|$KEYWORD_MMORPG_SACRED|$KEYWORDS_MMORPG_SWTOR|$KEYWORDS_MMORPG_PIRATES|$KEYWORDS_MMORPG_TALISMAN|$KEYWORDS_MMORPG_WIZARD101|$KEYWORDS_MMORPG_WOW"

fi