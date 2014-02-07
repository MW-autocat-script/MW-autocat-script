#!/bin/bash 

KEYWORDS_POKEMONRED="(Pokémon|Pokemon|Poke'mon)(| )Red"
KEYWORDS_POKEMONBLUE="(Pokémon|Pokemon|Poke'mon)(| )Blue"
KEYWORDS_POKEMONYELLOW="(Pokémon|Pokemon|Poke'mon)(| )Yel(l|)ow"
KEYWORDS_POKEMONGOLD="(Pokémon|Pokemon|Poke'mon)(| )Gold"
KEYWORDS_POKEMONSILVER="(Pokémon|Pokemon|Poke'mon)(| )Silver"
KEYWORDS_POKEMONCRYSTAL="(Pokémon|Pokemon|Poke'mon)(| )Crystal"
KEYWORDS_POKEMONRUBY="(Pokémon|Pokemon|Poke'mon)(| )Ruby"
KEYWORDS_POKEMONSAPPHIRE="(Pokémon|Pokemon|Poke'mon)(| )Sapphire"
KEYWORDS_POKEMONEMERALD="(Pokémon|Pokemon|Poke'mon)(| )Emerald"
KEYWORDS_POKEMONFIRERED="(Pokémon|Pokemon|Poke'mon)(| )Fire(| )Red|\b(and|in)(| )fire(| )red"
KEYWORDS_POKEMONLEAFGREEN="(Pokémon|Pokemon|Poke'mon)(| )leaf(| )green|\b(and|in)(| )Leaf(| )green"
KEYWORDS_POKEMONREDRESCUETEAM="mystery(| )dungeon.+\bred|red(| )rescue(| )team"
KEYWORDS_POKEMONBLUERESCUETEAM="mystery(| )dungeon.+blue|blue(| )rescue(| )team"
KEYWORDS_POKEMONBLACKONE="(Pokémon|Pokemon|Poke'mon)(| )Black"
KEYWORDS_POKEMONWHITEONE="(Pokémon|Pokemon|Poke'mon)(| )White"
KEYWORDS_POKEMONBLACKTWO="(Pokémon|Pokemon|Poke'mon)(| )Black(| )2|and(| )Black(| )2$"
KEYWORDS_POKEMONWHITETWO="(Pokémon|Pokemon|Poke'mon)(| )White(| )2|and(| )White(| )2$"
KEYWORDS_POKEMONDIAMOND="(Pokémon|Pokemon|Poke'mon)(| )Di(a|)mond"
KEYWORDS_POKEMONPEARL="(Pokémon|Pokemon|Poke'mon)(| )Pe(a|)rl"
KEYWORDS_POKEMONPLATINUM="(Pokémon|Pokemon|Poke'mon)(| )Pla(|i)t(|i)n(|i)um"
KEYWORDS_POKEMONHEARTGOLD="Heart(| )Gold"
KEYWORDS_POKEMONSOULSILVER="Soul(| )Silver"
KEYWORDS_POKEMONX="(Pokemon|Pokémon|Poke'mon)(| )X\b"
KEYWORDS_POKEMONY="(Pokemon|Pokémon|Poke'mon)(| )Y\b"
KEYWORDS_POKEMONSHADOWSOFALMIA="Shadow(|s)(| )of(| )(Almia|Amlia)"
KEYWORDS_POKEMONGUARDIANSIGNS="Guardian(| )Signs"
KEYWORDS_POKEMONRANGER="(Pokemon|Pokémon|Poke'mon)(| )Ranger"
KEYWORDS_POKEMONRANGER_EXCLUDE="$KEYWORDS_POKEMONSHADOWSOFALMIA|$KEYWORDS_POKEMONGUARDIANSIGNS"
KEYWORDS_POKEMONXD="(Pokemon|Pokémon|Poke'mon)(| )XD|Gale(| )of(| )Darkness"
KEYWORDS_UNOVARPG="(Pokémon|Pokemon|Poke'mon)(| )Indigo|Unova(| )RPG"
KEYWORDS_DELUGERPG="(Pokémon|Pokemon|Poke'mon)(| )Deluge|Deluge(| )RPG"
KEYWORDS_VORTEX="(Pokémon|Pokemon|Poke'mon)(| )Vortex|Vortex(| )Battle(| )Arena"

#Group games so we can export more easily

KEYWORDS_POKEMONGAMES_1="$KEYWORDS_POKEMONRED|$KEYWORDS_POKEMONBLUE|$KEYWORDS_POKEMONYELLOW"
KEYWORDS_POKEMONGAMES_2="$KEYWORDS_POKEMONGOLD|$KEYWORDS_POKEMONSILVER|$KEYWORDS_POKEMONCRYSTAL"
KEYWORDS_POKEMONGAMES_3="$KEYWORDS_POKEMONRUBY|$KEYWORDS_POKEMONSAPPHIRE|$KEYWORDS_POKEMONEMERALD|$KEYWORDS_POKEMONFIRERED|$KEYWORDS_POKEMONLEAFGREEN|$KEYWORDS_POKEMONXD"
KEYWORDS_POKEMONGAMES_4="$KEYWORDS_POKEMONDIAMOND|$KEYWORDS_POKEMONPEARL|$KEYWORDS_POKEMONPLATINUM|$KEYWORDS_POKEMONHEARTGOLD|$KEYWORDS_POKEMONSOULSILVER"
KEYWORDS_POKEMONGAMES_5="$KEYWORDS_POKEMONBLACKONE|$KEYWORDS_POKEMONBLACKTWO|$KEYWORDS_POKEMONWHITEONE|$KEYWORDS_POKEMONWHITETWO"
KEYWORDS_POKEMONGAMES_6="$KEYWORDS_POKEMONX|$KEYWORDS_POKEMONY"
KEYWORDS_POKEMONGAMES_UNOFFICIAL="$KEYWORDS_UNOVARPG|$KEYWORDS_VORTEX|$KEYWORDS_DELUGERPG"

#Final grouping

KEYWORDS_POKEMONGAMES_ALL="$KEYWORDS_POKEMONGAMES_1|$KEYWORDS_POKEMONGAMES_2|$KEYWORDS_POKEMONGAMES_3|$KEYWORDS_POKEMONGAMES_4|$KEYWORDS_POKEMONGAMES_5|$KEYWORDS_POKEMONGAMES_6|$KEYWORDS_POKEMONGAMES_UNOFFICIAL"


if [ "$1" == "" ];
then

  debug_start "Pokemon games"

  RED="$(egrep -i "$KEYWORDS_POKEMONRED" newpages.txt)"
  BLUE="$(egrep -i "$KEYWORDS_POKEMONBLUE" newpages.txt)"
  YELLOW="$(egrep -i "$KEYWORDS_POKEMONYELLOW" newpages.txt)"
  GOLD="$(egrep -i "$KEYWORDS_POKEMONGOLD" newpages.txt)"
  SILVER="$(egrep -i "$KEYWORDS_POKEMONSILVER" newpages.txt)"
  CRYSTAL="$(egrep -i "$KEYWORDS_POKEMONCRYSTAL" newpages.txt)"
  RUBY="$(egrep -i "$KEYWORDS_POKEMONRUBY" newpages.txt)"
  SAPPHIRE="$(egrep -i "$KEYWORDS_POKEMONSAPPHIRE" newpages.txt)"
  EMERALD="$(egrep -i "$KEYWORDS_POKEMONEMERALD" newpages.txt)"
  FIRERED="$(egrep -i "$KEYWORDS_POKEMONFIRERED" newpages.txt)"
  LEAFGREEN="$(egrep -i "$KEYWORDS_POKEMONLEAFGREEN" newpages.txt)"
  REDTEAM="$(egrep -i "$KEYWORDS_POKEMONREDRESCUETEAM" newpages.txt)"
  BLUETEAM="$(egrep -i "$KEYWORDS_POKEMONBLUERESCUETEAM" newpages.txt)"
  BLACK="$(egrep -i "$KEYWORDS_POKEMONBLACKONE" newpages.txt | egrep -iv "$KEYWORDS_POKEMONBLACKTWO")"
  WHITE="$(egrep -i "$KEYWORDS_POKEMONWHITEONE" newpages.txt | egrep -iv "$KEYWORDS_POKEMONWHITETWO")"
  DIAMOND="$(egrep -i "$KEYWORDS_POKEMONDIAMOND" newpages.txt)"
  PEARL="$(egrep -i "$KEYWORDS_POKEMONPEARL" newpages.txt)"
  PLATINUM="$(egrep -i "$KEYWORDS_POKEMONPLATINUM" newpages.txt)"
  HEARTGOLD="$(egrep -i "$KEYWORDS_POKEMONHEARTGOLD" newpages.txt)"
  SOULSILVER="$(egrep -i "$KEYWORDS_POKEMONSOULSILVER" newpages.txt)"
  BLACK2="$(egrep -i "$KEYWORDS_POKEMONBLACKTWO" newpages.txt)"
  WHITE2="$(egrep -i "$KEYWORDS_POKEMONWHITETWO" newpages.txt)"
  UNOVARPG="$(egrep -i "$KEYWORDS_UNOVARPG" newpages.txt)"
  DELUGERPG="$(egrep -i "$KEYWORDS_DELUGERPG" newpages.txt)"
  VORTEX="$(egrep -i "$KEYWORDS_VORTEX" newpages.txt)"
  POKEMONX="$(egrep -i "$KEYWORDS_POKEMONX" newpages.txt)"
  POKEMONY="$(egrep -i "$KEYWORDS_POKEMONY" newpages.txt)"
  RANGER="$(egrep -i "$KEYWORDS_POKEMONRANGER" newpages.txt | egrep -iv "$KEYWORDS_POKEMONRANGER_EXCLUDE")"
  ALMIA="$(egrep -i "$KEYWORDS_POKEMONSHADOWSOFALMIA" newpages.txt)"
  GUARDIAN="$(egrep -i "$KEYWORDS_POKEMONGUARDIANSIGNS" newpages.txt)"
  GALEOFDARKNESS="$(egrep -i "$KEYWORDS_POKEMONXD" newpages.txt)"

  if [ "$RED" != "" ];
  then
    printf "%s" "$RED" > PokémonRed.txt
    export CATFILE="PokémonRed.txt"
    export CATNAME="Pokémon Red"
    $CATEGORIZE
    rm PokémonRed.txt
    unset RED
  fi

  if [ "$BLUE" != "" ];
  then
    printf "%s" "$BLUE" > PokémonBlue.txt
    export CATFILE="PokémonBlue.txt"
    export CATNAME="Pokémon Blue"
    $CATEGORIZE
    rm PokémonBlue.txt
    unset BLUE
  fi

  if [ "$YELLOW" != "" ];
  then
    printf "%s" "$YELLOW" > PokémonYellow.txt
    export CATFILE="PokémonYellow.txt"
    export CATNAME="Pokémon Yellow"
    $CATEGORIZE
    rm PokémonYellow.txt
    unset YELLOW
  fi

  if [ "$GOLD" != "" ];
  then
    printf "%s" "$GOLD" > PokémonGold.txt
    export CATFILE="PokémonGold.txt"
    export CATNAME="Pokémon Gold"
    $CATEGORIZE
    rm PokémonGold.txt
    unset GOLD
  fi

  if [ "$SILVER" != "" ];
  then
    printf "%s" "$SILVER" > PokémonSilver.txt
    export CATFILE="PokémonSilver.txt"
    export CATNAME="Pokémon Silver"
    $CATEGORIZE
    rm PokémonSilver.txt
    unset SILVER
  fi

  if [ "$CRYSTAL" != "" ];
  then
    printf "%s" "$CRYSTAL" > PokémonCrystal.txt
    export CATFILE="PokémonCrystal.txt"
    export CATNAME="Pokémon Crystal"
    $CATEGORIZE
    rm PokémonCrystal.txt
    unset CRYSTAL
  fi

  if [ "$RUBY" != "" ];
  then
    printf "%s" "$RUBY" > PokémonRuby.txt
    export CATFILE="PokémonRuby.txt"
    export CATNAME="Pokémon Ruby"
    $CATEGORIZE
    rm PokémonRuby.txt
    unset RUBY
  fi

  if [ "$SAPPHIRE" != "" ];
  then
    printf "%s" "$SAPPHIRE" > PokémonSapphire.txt
    export CATFILE="PokémonSapphire.txt"
    export CATNAME="Pokémon Sapphire"
    $CATEGORIZE
    rm PokémonSapphire.txt
    unset SAPPHIRE
  fi

  if [ "$EMERALD" != "" ];
  then
    printf "%s" "$EMERALD" > PokémonEmerald.txt
    export CATFILE="PokémonEmerald.txt"
    export CATNAME="Pokémon Emerald"
    $CATEGORIZE
    rm PokémonEmerald.txt
    unset EMERALD
  fi

  if [ "$FIRERED" != "" ];
  then
    printf "%s" "$FIRERED" > PokémonFireRed.txt
    export CATFILE="PokémonFireRed.txt"
    export CATNAME="Pokémon FireRed"
    $CATEGORIZE
    rm PokémonFireRed.txt
    unset FIRERED
  fi

  if [ "$LEAFGREEN" != "" ];
  then
    printf "%s" "$LEAFGREEN" > PokémonLeafGreen.txt
    export CATFILE="PokémonLeafGreen.txt"
    export CATNAME="Pokémon LeafGreen"
    $CATEGORIZE
    rm PokémonLeafGreen.txt
    unset LEAFGREEN
  fi

  if [ "$REDTEAM" != "" ];
  then
    printf "%s" "$REDTEAM" > RedRescueTeam.txt
    export CATFILE="RedRescueTeam.txt"
    export CATNAME="Pokémon Mystery Dungeon: Red Rescue Team"
    $CATEGORIZE
    rm RedRescueTeam.txt
    unset REDTEAM
  fi

  if [ "$BLUETEAM" != "" ];
  then
    printf "%s" "$BLUETEAM" > BlueRescueTeam.txt
    export CATFILE="BlueRescueTeam.txt"
    export CATNAME="Pokémon Mystery Dungeon: Blue Rescue Team"
    $CATEGORIZE
    rm BlueRescueTeam.txt
    unset BLUETEAM
  fi

  if [ "$BLACK" != "" ];
  then
    printf "%s" "$BLACK" > PokémonBlack.txt
    export CATFILE="PokémonBlack.txt"
    export CATNAME="Pokémon Black"
    $CATEGORIZE
    rm PokémonBlack.txt
    unset BLACK
  fi

  if [ "$WHITE" != "" ];
  then
    printf "%s" "$WHITE" > PokémonWhite.txt
    export CATFILE="PokémonWhite.txt"
    export CATNAME="Pokémon White"
    $CATEGORIZE
    rm PokémonWhite.txt
    unset WHITE
  fi

  if [ "$BLACK2" != "" ];
  then
    printf "%s" "$BLACK2" > PokémonBlack2.txt
    export CATFILE="PokémonBlack2.txt"
    export CATNAME="Pokémon Black 2"
    $CATEGORIZE
    rm PokémonBlack2.txt
    unset BLACK2
  fi

  if [ "$WHITE2" != "" ];
  then
    printf "%s" "$WHITE2" > PokémonWhite2.txt
    export CATFILE="PokémonWhite2.txt"
    export CATNAME="Pokémon White 2"
    $CATEGORIZE
    rm PokémonWhite2.txt
    unset WHITE2
  fi

  if [ "$DIAMOND" != "" ];
  then
    printf "%s" "$DIAMOND" > PokémonDiamond.txt
    export CATFILE="PokémonDiamond.txt"
    export CATNAME="Pokémon Diamond"
    $CATEGORIZE
    rm PokémonDiamond.txt
    unset DIAMOND
  fi

  if [ "$PEARL" != "" ];
  then
    printf "%s" "$PEARL" > PokémonPearl.txt
    export CATFILE="PokémonPearl.txt"
    export CATNAME="Pokémon Pearl"
    $CATEGORIZE
    rm PokémonPearl.txt
    unset PEARL
  fi

  if [ "$PLATINUM" != "" ];
  then
    printf "%s" "$PLATINUM" > PokémonPlatinum.txt
    export CATFILE="PokémonPlatinum.txt"
    export CATNAME="Pokémon Platinum"
    $CATEGORIZE
    rm PokémonPlatinum.txt
    unset PLATINUM
  fi

  if [ "$HEARTGOLD" != "" ];
  then
    printf "%s" "$HEARTGOLD" > PokémonHeartGold.txt
    export CATFILE="PokémonHeartGold.txt"
    export CATNAME="Pokémon HeartGold"
    $CATEGORIZE
    rm PokémonHeartGold.txt
    unset HEARTGOLD
  fi

  if [ "$SOULSILVER" != "" ];
  then
    printf "%s" "$SOULSILVER" > PokémonSoulSilver.txt
    export CATFILE="PokémonSoulSilver.txt"
    export CATNAME="Pokémon SoulSilver"
    $CATEGORIZE
    rm PokémonSoulSilver.txt
    unset SOULSILVER
  fi

  if [ "$UNOVARPG" != "" ];
  then
    printf "%s" "$UNOVARPG" > UnovaRPG.txt
    export CATFILE="UnovaRPG.txt"
    export CATNAME="UnovaRPG"
    $CATEGORIZE
    rm UnovaRPG.txt
    unset UNOVARPG
  fi

  if [ "$DELUGERPG" != "" ];
  then
    printf "%s" "$DELUGERPG" > DelugeRPG.txt
    export CATFILE="DelugeRPG.txt"
    export CATNAME="DelugeRPG"
    $CATEGORIZE
    rm DelugeRPG.txt
    unset DELUGERPG
  fi

  if [ "$POKEMONX" != "" ];
  then
    printf "%s" "$POKEMONX" > PokémonX.txt
    export CATFILE="PokémonX.txt"
    export CATNAME="Pokémon X"
    $CATEGORIZE
    rm PokémonX.txt
    unset POKEMONX
  fi

  if [ "$POKEMONY" != "" ];
  then
    printf "%s" "$POKEMONY" > PokémonY.txt
    export CATFILE="PokémonY.txt"
    export CATNAME="Pokémon Y"
    $CATEGORIZE
    rm PokémonY.txt
    unset POKEMONY
  fi

  if [ "$RANGER" != "" ];
  then
    printf "%s" "$RANGER" > PokémonRanger.txt
    export CATFILE="PokémonRanger.txt"
    export CATNAME="Pokémon Ranger"
    $CATEGORIZE
    rm PokémonRanger.txt
    unset RANGER
  fi

  if [ "$ALMIA" != "" ];
  then
    printf "%s" "$ALMIA" > ShadowsOfAlmia.txt
    export CATFILE="ShadowsOfAlmia.txt"
    export CATNAME="Pokémon Ranger: Shadows of Almia"
    $CATEGORIZE
    rm ShadowsOfAlmia.txt
    unset ALMIA
  fi

  if [ "$GUARDIAN" != "" ];
  then
    printf "%s" "$GUARDIAN" > GuardianSigns.txt
    export CATFILE="GuardianSigns.txt"
    export CATNAME="Pokémon Ranger: Guardian Signs"
    $CATEGORIZE
    rm GuardianSigns.txt
    unset GUARDIAN
  fi

  if [ "$GALEOFDARKNESS" != "" ];
  then
    printf "%s" "$GALEOFDARKNESS" > PokémonXD.txt
    export CATFILE="PokémonXD.txt"
    export CATNAME="Pokémon XD: Gale of Darkness"
    $CATEGORIZE
    rm PokémonXD.txt
    unset GALEOFDARKNESS
  fi

  if [ "$VORTEX" != "" ];
  then
    printf "%s" "$VORTEX" > Vortex.txt
    export CATFILE="Vortex.txt"
    export CATNAME="Pokémon Vortex"
    $CATEGORIZE
    rm Vortex.txt
    unset VORTEX
  fi

  debug_end "Pokemon games"

fi