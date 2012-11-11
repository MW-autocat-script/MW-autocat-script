#!/bin/bash 

cat newpages.txt | egrep -i "(Pokémon|Pokemon|Poke'mon)(red| Red)" >> PokémonRed.txt
cat newpages.txt | egrep -i "(Pokémon|Pokemon|Poke'mon)(blue| Blue)" >> PokémonBlue.txt
cat newpages.txt | egrep -i "(Pokémon|Pokemon|Poke'mon)(yellow| Yellow)" >> PokémonYellow.txt
cat newpages.txt | egrep -i "(Pokémon|Pokemon|Poke'mon)(gold| Gold)" >> PokémonGold.txt
cat newpages.txt | egrep -i "(Pokémon|Pokemon|Poke'mon)(silver| Silver)" >> PokémonSilver.txt
cat newpages.txt | egrep -i "(Pokémon|Pokemon|Poke'mon)(crystal| Crystal)" >> PokémonCrystal.txt
cat newpages.txt | egrep -i "(Pokémon|Pokemon|Poke'mon)(ruby| Ruby)" >> PokémonRuby.txt
cat newpages.txt | egrep -i "(Pokémon|Pokemon|Poke'mon)(sapphire| Sapphire)" >> PokémonSapphire.txt
cat newpages.txt | egrep -i "(Pokémon|Pokemon|Poke'mon)(emerald| Emerald)" >> PokémonEmerald.txt
cat newpages.txt | egrep -i "(Pokémon|Pokemon|Poke'mon)(firered|fire red| FireRed| Fire Red)" >> PokémonFireRed.txt
cat newpages.txt | egrep -i "(Pokémon|Pokemon|Poke'mon)(leafgreen|leaf green| LeafGreen| Leaf Green)" >> PokémonLeafGreen.txt
cat newpages.txt | egrep -i "mystery dungeon.+red|red rescue team" >> RedRescueTeam.txt
cat newpages.txt | egrep -i "mystery dungeon.+blue|blue rescue team" >> BlueRescueTeam.txt
cat newpages.txt | egrep -i "(Pokémon|Pokemon|Poke'mon)(black| Black)" >> PokémonBlack.txt
cat newpages.txt | egrep -i "(Pokémon|Pokemon|Poke'mon)(white| White)" >> PokémonWhite.txt
cat newpages.txt | egrep -i "(Pokémon|Pokemon|Poke'mon)((dimond|diamond)| (dimond|Diamond))" >> PokémonDiamond.txt
cat newpages.txt | egrep -i "(Pokémon|Pokemon|Poke'mon)((perl|pearl)| (perl|Pearl))" >> PokémonPearl.txt
cat newpages.txt | egrep -i "(Pokémon|Pokemon|Poke'mon)((platinum|platnum|platnium)| (Platinum|Platnum|Platnium))" >> PokémonPlatinum.txt
cat newpages.txt | egrep -i "HeartGold|Heart Gold" >> PokémonHeartGold.txt
cat newpages.txt | egrep -i "SoulSilver|Soul Silver" >> PokémonSoulSilver.txt

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




if [ $RED -ne 0 ];
then
  export CATFILE="PokémonRed.txt"
  export CATNAME="Pokémon Red"
  ./catscripts/Categorize.sh
fi

if [ $BLUE -ne 0 ];
then
  export CATFILE="PokémonBlue.txt"
  export CATNAME="Pokémon Blue"
  ./catscripts/Categorize.sh
fi

if [ $YELLOW -ne 0 ];
then
  export CATFILE="PokémonYellow.txt"
  export CATNAME="Pokémon Yellow"
  ./catscripts/Categorize.sh
fi

if [ $GOLD -ne 0 ];
then
  export CATFILE="PokémonGold.txt"
  export CATNAME="Pokémon Gold"
  ./catscripts/Categorize.sh
fi

if [ $SILVER -ne 0 ];
then
  export CATFILE="PokémonSilver.txt"
  export CATNAME="Pokémon Silver"
  ./catscripts/Categorize.sh
fi

if [ $CRYSTAL -ne 0 ];
then
  export CATFILE="PokémonCrystal.txt"
  export CATNAME="Pokémon Crystal"
  ./catscripts/Categorize.sh
fi

if [ $RUBY -ne 0 ];
then
  export CATFILE="PokémonRuby.txt"
  export CATNAME="Pokémon Ruby"
  ./catscripts/Categorize.sh
fi

if [ $SAPPHIRE -ne 0 ];
then
  export CATFILE="PokémonSapphire.txt"
  export CATNAME="Pokémon Sapphire"
  ./catscripts/Categorize.sh
fi

if [ $EMERALD -ne 0 ];
then
  export CATFILE="PokémonEmerald.txt"
  export CATNAME="Pokémon Emerald"
  ./catscripts/Categorize.sh
fi

if [ $FIRERED -ne 0 ];
then
  export CATFILE="PokémonFireRed.txt"
  export CATNAME="Pokémon FireRed"
  ./catscripts/Categorize.sh
fi

if [ $LEAFGREEN -ne 0 ];
then
  export CATFILE="PokémonLeafGreen.txt"
  export CATNAME="Pokémon LeafGreen"
  ./catscripts/Categorize.sh
fi

if [ $REDTEAM -ne 0 ];
then
  export CATFILE="RedRescueTeam.txt"
  export CATNAME="Pokémon Mystery Dungeon: Red Rescue Team"
  ./catscripts/Categorize.sh
fi

if [ $BLUETEAM -ne 0 ];
then
  export CATFILE="BlueRescueTeam.txt"
  export CATNAME="Pokémon Mystery Dungeon: Blue Rescue Team"
  ./catscripts/Categorize.sh
fi

if [ $BLACK -ne 0 ];
then
  export CATFILE="PokémonBlack.txt"
  export CATNAME="Pokémon Black"
  ./catscripts/Categorize.sh
fi

if [ $WHITE -ne 0 ];
then
  export CATFILE="PokémonWhite.txt"
  export CATNAME="Pokémon White"
  ./catscripts/Categorize.sh
fi

if [ $DIAMOND -ne 0 ];
then
  export CATFILE="PokémonDiamond.txt"
  export CATNAME="Pokémon Diamond"
  ./catscripts/Categorize.sh
fi

if [ $PEARL -ne 0 ];
then
  export CATFILE="PokémonPearl.txt"
  export CATNAME="Pokémon Pearl"
  ./catscripts/Categorize.sh
fi

if [ $PLATINUM -ne 0 ];
then
  export CATFILE="PokémonPlatinum.txt"
  export CATNAME="Pokémon Platinum"
  ./catscripts/Categorize.sh
fi

if [ $HEARTGOLD -ne 0 ];
then
  export CATFILE="PokémonHeartGold.txt"
  export CATNAME="Pokémon HeartGold"
  ./catscripts/Categorize.sh
fi

if [ $SOULSILVER -ne 0 ];
then
  export CATFILE="PokémonSoulSilver.txt"
  export CATNAME="Pokémon SoulSilver"
  ./catscripts/Categorize.sh
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
rm PokémonDiamond.txt
rm PokémonPearl.txt
rm PokémonPlatinum.txt
rm PokémonHeartGold.txt
rm PokémonSoulSilver.txt