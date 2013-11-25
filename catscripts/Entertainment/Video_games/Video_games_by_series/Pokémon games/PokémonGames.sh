#!/bin/bash 

egrep -i "(Pokémon|Pokemon|Poke'mon)(red| Red)" newpages.txt >> PokémonRed.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)(blue| Blue)" newpages.txt >> PokémonBlue.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)(yellow| Yellow)" newpages.txt >> PokémonYellow.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)(gold| Gold)" newpages.txt >> PokémonGold.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)(silver| Silver)" newpages.txt >> PokémonSilver.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)(crystal| Crystal)" newpages.txt >> PokémonCrystal.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)(ruby| Ruby)" newpages.txt >> PokémonRuby.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)(sapphire| Sapphire)" newpages.txt >> PokémonSapphire.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)(emerald| Emerald)" newpages.txt >> PokémonEmerald.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)(firered|fire red| FireRed| Fire Red)" newpages.txt >> PokémonFireRed.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)(leafgreen|leaf green| LeafGreen| Leaf Green)" newpages.txt >> PokémonLeafGreen.txt
egrep -i "mystery dungeon.+\bred|red rescue team" newpages.txt >> RedRescueTeam.txt
egrep -i "mystery dungeon.+blue|blue rescue team" newpages.txt >> BlueRescueTeam.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)(black| Black)" newpages.txt | egrep -iv 'Black(| )2' >> PokémonBlack.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)(white| White)" newpages.txt | egrep -iv 'White(| )2' >> PokémonWhite.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)(black| Black)(| )2" newpages.txt >> PokémonBlack2.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)(white| White)(| )2" newpages.txt >> PokémonWhite2.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)((dimond|diamond)| (dimond|Diamond))" newpages.txt >> PokémonDiamond.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)((perl|pearl)| (perl|Pearl))" newpages.txt >> PokémonPearl.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)((platinum|platnum|platnium)| (Platinum|Platnum|Platnium))" newpages.txt >> PokémonPlatinum.txt
egrep -i "HeartGold|Heart Gold" newpages.txt >> PokémonHeartGold.txt
egrep -i "SoulSilver|Soul Silver" newpages.txt >> PokémonSoulSilver.txt
egrep -i "(Pokemon|Pokémon|Poke'mon)(| )X\b" newpages.txt >> PokémonX.txt
egrep -i "(Pokemon|Pokémon|Poke'mon)(| )Y\b" newpages.txt >> PokémonY.txt
egrep -i "Shadow(|s) of (Almia|Amlia)" newpages.txt >> ShadowsOfAlmia.txt
egrep -i "Guardian Signs" newpages.txt >> GuardianSigns.txt
egrep -i "(Pokemon|Pokémon|Poke'mon) Ranger" newpages.txt | egrep -iv 'Shadow(|s) of (Almia|Amlia)|Guardian Signs' >> PokémonRanger.txt
egrep -i "(Pokemon|Pokémon|Poke'mon)(| )XD|Gale of Darkness" newpages.txt  >> PokémonXD.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)(| )Indigo|Unova(| )RPG" newpages.txt >> UnovaRPG.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)(| )Deluge|Deluge(| )RPG" newpages.txt >> DelugeRPG.txt
egrep -i "(Pokémon|Pokemon|Poke'mon)(| )Vortex|Vortex Battle Arena" newpages.txt >> Vortex.txt

RED=`stat --print=%s PokémonRed.txt`
BLUE=`stat --print=%s PokémonBlue.txt`
YELLOW=`stat --print=%s PokémonYellow.txt`
GOLD=`stat --print=%s PokémonGold.txt`
SILVER=`stat --print=%s PokémonSilver.txt`
CRYSTAL=`stat --print=%s PokémonCrystal.txt`
RUBY=`stat --print=%s PokémonRuby.txt`
SAPPHIRE=`stat --print=%s PokémonSapphire.txt`
EMERALD=`stat --print=%s PokémonEmerald.txt`
FIRERED=`stat --print=%s PokémonFireRed.txt`
LEAFGREEN=`stat --print=%s PokémonLeafGreen.txt`
REDTEAM=`stat --print=%s RedRescueTeam.txt`
BLUETEAM=`stat --print=%s BlueRescueTeam.txt`
BLACK=`stat --print=%s PokémonBlack.txt`
WHITE=`stat --print=%s PokémonWhite.txt`
DIAMOND=`stat --print=%s PokémonDiamond.txt`
PEARL=`stat --print=%s PokémonPearl.txt`
PLATINUM=`stat --print=%s PokémonPlatinum.txt`
HEARTGOLD=`stat --print=%s PokémonHeartGold.txt`
SOULSILVER=`stat --print=%s PokémonSoulSilver.txt`
BLACK2=`stat --print=%s PokémonBlack2.txt`
WHITE2=`stat --print=%s PokémonWhite2.txt`
UNOVARPG=`stat --print=%s UnovaRPG.txt`
DELUGERPG=`stat --print=%s DelugeRPG.txt`
VORTEX=`stat --print=%s Vortex.txt`
POKEMONX=`stat --print=%s PokémonX.txt`
POKEMONY=`stat --print=%s PokémonY.txt`
RANGER=`stat --print=%s PokémonRanger.txt`
ALMIA=`stat --print=%s ShadowsOfAlmia.txt`
GUARDIAN=`stat --print=%s GuardianSigns.txt`
GALEOFDARKNESS=`stat --print=%s PokémonXD.txt`
POKEMONX=`stat --print=%s PokémonX.txt`
POKEMONY=`stat --print=%s PokémonY.txt`


if [ $RED -ne 0 ];
then
  export CATFILE="PokémonRed.txt"
  export CATNAME="Pokémon Red"
  $CATEGORIZE
fi

if [ $BLUE -ne 0 ];
then
  export CATFILE="PokémonBlue.txt"
  export CATNAME="Pokémon Blue"
  $CATEGORIZE
fi

if [ $YELLOW -ne 0 ];
then
  export CATFILE="PokémonYellow.txt"
  export CATNAME="Pokémon Yellow"
  $CATEGORIZE
fi

if [ $GOLD -ne 0 ];
then
  export CATFILE="PokémonGold.txt"
  export CATNAME="Pokémon Gold"
  $CATEGORIZE
fi

if [ $SILVER -ne 0 ];
then
  export CATFILE="PokémonSilver.txt"
  export CATNAME="Pokémon Silver"
  $CATEGORIZE
fi

if [ $CRYSTAL -ne 0 ];
then
  export CATFILE="PokémonCrystal.txt"
  export CATNAME="Pokémon Crystal"
  $CATEGORIZE
fi

if [ $RUBY -ne 0 ];
then
  export CATFILE="PokémonRuby.txt"
  export CATNAME="Pokémon Ruby"
  $CATEGORIZE
fi

if [ $SAPPHIRE -ne 0 ];
then
  export CATFILE="PokémonSapphire.txt"
  export CATNAME="Pokémon Sapphire"
  $CATEGORIZE
fi

if [ $EMERALD -ne 0 ];
then
  export CATFILE="PokémonEmerald.txt"
  export CATNAME="Pokémon Emerald"
  $CATEGORIZE
fi

if [ $FIRERED -ne 0 ];
then
  export CATFILE="PokémonFireRed.txt"
  export CATNAME="Pokémon FireRed"
  $CATEGORIZE
fi

if [ $LEAFGREEN -ne 0 ];
then
  export CATFILE="PokémonLeafGreen.txt"
  export CATNAME="Pokémon LeafGreen"
  $CATEGORIZE
fi

if [ $REDTEAM -ne 0 ];
then
  export CATFILE="RedRescueTeam.txt"
  export CATNAME="Pokémon Mystery Dungeon: Red Rescue Team"
  $CATEGORIZE
fi

if [ $BLUETEAM -ne 0 ];
then
  export CATFILE="BlueRescueTeam.txt"
  export CATNAME="Pokémon Mystery Dungeon: Blue Rescue Team"
  $CATEGORIZE
fi

if [ $BLACK -ne 0 ];
then
  export CATFILE="PokémonBlack.txt"
  export CATNAME="Pokémon Black"
  $CATEGORIZE
fi

if [ $WHITE -ne 0 ];
then
  export CATFILE="PokémonWhite.txt"
  export CATNAME="Pokémon White"
  $CATEGORIZE
fi

if [ $BLACK2 -ne 0 ];
then
  export CATFILE="PokémonBlack2.txt"
  export CATNAME="Pokémon Black 2"
  $CATEGORIZE
fi

if [ $WHITE2 -ne 0 ];
then
  export CATFILE="PokémonWhite2.txt"
  export CATNAME="Pokémon White 2"
  $CATEGORIZE
fi

if [ $DIAMOND -ne 0 ];
then
  export CATFILE="PokémonDiamond.txt"
  export CATNAME="Pokémon Diamond"
  $CATEGORIZE
fi

if [ $PEARL -ne 0 ];
then
  export CATFILE="PokémonPearl.txt"
  export CATNAME="Pokémon Pearl"
  $CATEGORIZE
fi

if [ $PLATINUM -ne 0 ];
then
  export CATFILE="PokémonPlatinum.txt"
  export CATNAME="Pokémon Platinum"
  $CATEGORIZE
fi

if [ $HEARTGOLD -ne 0 ];
then
  export CATFILE="PokémonHeartGold.txt"
  export CATNAME="Pokémon HeartGold"
  $CATEGORIZE
fi

if [ $SOULSILVER -ne 0 ];
then
  export CATFILE="PokémonSoulSilver.txt"
  export CATNAME="Pokémon SoulSilver"
  $CATEGORIZE
fi

if [ $UNOVARPG -ne 0 ];
then
  export CATFILE="UnovaRPG.txt"
  export CATNAME="UnovaRPG"
  $CATEGORIZE
fi

if [ $DELUGERPG -ne 0 ];
then
  export CATFILE="DelugeRPG.txt"
  export CATNAME="DelugeRPG"
  $CATEGORIZE
fi

if [ $POKEMONX -ne 0 ];
then
  export CATFILE="PokémonX.txt"
  export CATNAME="Pokémon X"
  $CATEGORIZE
fi

if [ $POKEMONY -ne 0 ];
then
  export CATFILE="PokémonY.txt"
  export CATNAME="Pokémon Y"
  $CATEGORIZE
fi

if [ $RANGER -ne 0 ];
then
  export CATFILE="PokémonRanger.txt"
  export CATNAME="Pokémon Ranger"
  $CATEGORIZE
fi

if [ $ALMIA -ne 0 ];
then
  export CATFILE="ShadowsOfAlmia.txt"
  export CATNAME="Pokémon Ranger: Shadows of Almia"
  $CATEGORIZE
fi

if [ $GUARDIAN -ne 0 ];
then
  export CATFILE="GuardianSigns.txt"
  export CATNAME="Pokémon Ranger: Guardian Signs"
  $CATEGORIZE
fi

if [ $GALEOFDARKNESS -ne 0 ];
then
  export CATFILE="PokémonXD.txt"
  export CATNAME="Pokémon XD: Gale of Darkness"
  $CATEGORIZE
fi

if [ $VORTEX -ne 0 ];
then
  export CATFILE="Vortex.txt"
  export CATNAME="Pokémon Vortex"
  $CATEGORIZE
fi

rm PokémonRed.txt
rm PokémonBlue.txt
rm PokémonYellow.txt
rm PokémonGold.txt
rm PokémonSilver.txt
rm PokémonCrystal.txt
rm PokémonRuby.txt
rm PokémonSapphire.txt
rm PokémonEmerald.txt
rm PokémonFireRed.txt
rm PokémonLeafGreen.txt
rm RedRescueTeam.txt
rm BlueRescueTeam.txt
rm PokémonBlack.txt
rm PokémonWhite.txt
rm PokémonBlack2.txt
rm PokémonWhite2.txt
rm PokémonDiamond.txt
rm PokémonPearl.txt
rm PokémonPlatinum.txt
rm PokémonHeartGold.txt
rm PokémonSoulSilver.txt
rm UnovaRPG.txt
rm DelugeRPG.txt
rm PokémonRanger.txt
rm ShadowsOfAlmia.txt
rm GuardianSigns.txt
rm PokémonXD.txt
rm Vortex.txt
rm PokémonX.txt
rm PokémonY.txt