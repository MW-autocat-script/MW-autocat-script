#!/bin/bash 

#Generation 1

KEYWORDS_POKEMONRED="(Pokémon|Pokemon|Poke'mon)(| )Red"
KEYWORDS_POKEMONBLUE="(Pokémon|Pokemon|Poke'mon)(| )Blue"
KEYWORDS_POKEMONYELLOW="(Pokémon|Pokemon|Poke'mon)(| )Yel(l|)ow"

#Generation 2

KEYWORDS_POKEMONGOLD="(Pokémon|Pokemon|Poke'mon)(| )Gold"
KEYWORDS_POKEMONSILVER="(Pokémon|Pokemon|Poke'mon)(| )Silver"
KEYWORDS_POKEMONCRYSTAL="(Pokémon|Pokemon|Poke'mon)(| )Crystal"

#Generation 3

KEYWORDS_POKEMONRUBY="(Pokémon|Pokemon|Poke'mon)(| )Ruby"
KEYWORDS_POKEMONSAPPHIRE="(Pokémon|Pokemon|Poke'mon)(| )Sapphire"
KEYWORDS_POKEMONEMERALD="(Pokémon|Pokemon|Poke'mon)(| )Emerald"
KEYWORDS_POKEMONFIRERED="(Pokémon|Pokemon|Poke'mon)(| )Fire(| )Red|\b(and|in)(| )fire(| )red"
KEYWORDS_POKEMONLEAFGREEN="(Pokémon|Pokemon|Poke'mon)(| )leaf(| )green|\b(and|in)(| )Leaf(| )green"
KEYWORDS_POKEMONXD="(Pokemon|Pokémon|Poke'mon)(| )XD|Gale(| )of(| )Darkness"
KEYWORDS_POKEMONRANGER="(Pokemon|Pokémon|Poke'mon)(| )Ranger"
KEYWORDS_POKEMONRANGER_EXCLUDE="$KEYWORDS_POKEMONSHADOWSOFALMIA|$KEYWORDS_POKEMONGUARDIANSIGNS"
KEYWORDS_POKEMONREDRESCUETEAM="mystery(| )dungeon.+\bred|red(| )rescue(| )team"
KEYWORDS_POKEMONBLUERESCUETEAM="mystery(| )dungeon.+blue|blue(| )rescue(| )team"


#Generation 4

KEYWORDS_POKEMONDIAMOND="(Pokémon|Pokemon|Poke'mon)(| )Di(a|)mond"
KEYWORDS_POKEMONPEARL="(Pokémon|Pokemon|Poke'mon)(| )Pe(a|)rl"
KEYWORDS_POKEMONPLATINUM="(Pokémon|Pokemon|Poke'mon)(| )Pla(|i)t(|i)n(|i)um"
KEYWORDS_POKEMONHEARTGOLD="Heart(| )Gold"
KEYWORDS_POKEMONSOULSILVER="Soul(| )Silver"
KEYWORDS_POKEMONSHADOWSOFALMIA="Shadow(|s)(| )of(| )(Almia|Amlia)"
KEYWORDS_POKEMONGUARDIANSIGNS="Guardian(| )Signs"

#Generation 5

KEYWORDS_POKEMONBLACKONE="(Pokémon|Pokemon|Poke'mon)(| )Black"
KEYWORDS_POKEMONWHITEONE="(Pokémon|Pokemon|Poke'mon)(| )White"
KEYWORDS_POKEMONBLACKTWO="(Pokémon|Pokemon|Poke'mon)(| )Black(| )2|and(| )Black(| )2$"
KEYWORDS_POKEMONWHITETWO="(Pokémon|Pokemon|Poke'mon)(| )White(| )2|and(| )White(| )2$"

#Generation 6

KEYWORDS_POKEMONX="(Pokemon|Pokémon|Poke'mon)(| )X\b"
KEYWORDS_POKEMONY="(Pokemon|Pokémon|Poke'mon)(| )Y\b"
KEYWORDS_POKEMONOMEGARUBY="Omega(| )Ruby"
KEYWORDS_POKEMONALPHASAPPHIRE="Alpha(| )Sapphire"


#Unofficial

KEYWORDS_UNOVARPG="(Pokémon|Pokemon|Poke'mon)(| )Indigo|Unova(| )RPG"
KEYWORDS_DELUGERPG="(Pokémon|Pokemon|Poke'mon)(| )Deluge|Deluge(| )RPG"
KEYWORDS_VORTEX="(Pokémon|Pokemon|Poke'mon)(| )Vortex|Vortex(| )Battle(| )Arena"

#Group games so we can export more easily

KEYWORDS_POKEMONGAMES_1="$KEYWORDS_POKEMONRED|$KEYWORDS_POKEMONBLUE|$KEYWORDS_POKEMONYELLOW"
KEYWORDS_POKEMONGAMES_2="$KEYWORDS_POKEMONGOLD|$KEYWORDS_POKEMONSILVER|$KEYWORDS_POKEMONCRYSTAL"
KEYWORDS_POKEMONGAMES_3="$KEYWORDS_POKEMONRUBY|$KEYWORDS_POKEMONSAPPHIRE|$KEYWORDS_POKEMONEMERALD|$KEYWORDS_POKEMONFIRERED|$KEYWORDS_POKEMONLEAFGREEN|$KEYWORDS_POKEMONXD|$KEYWORDS_POKEMONRANGER|$KEYWORDS_POKEMONREDRESCUETEAM|$KEYWORDS_POKEMONBLUERESCUETEAM"
KEYWORDS_POKEMONGAMES_4="$KEYWORDS_POKEMONDIAMOND|$KEYWORDS_POKEMONPEARL|$KEYWORDS_POKEMONPLATINUM|$KEYWORDS_POKEMONHEARTGOLD|$KEYWORDS_POKEMONSOULSILVER|$KEYWORDS_POKEMONGUARDIANSIGNS|$KEYWORDS_POKEMONSHADOWSOFALMIA"
KEYWORDS_POKEMONGAMES_5="$KEYWORDS_POKEMONBLACKONE|$KEYWORDS_POKEMONBLACKTWO|$KEYWORDS_POKEMONWHITEONE|$KEYWORDS_POKEMONWHITETWO"
KEYWORDS_POKEMONGAMES_6="$KEYWORDS_POKEMONX|$KEYWORDS_POKEMONY|$KEYWORDS_POKEMONALPHASAPPHIRE|$KEYWORDS_POKEMONOMEGARUBY"
KEYWORDS_POKEMONGAMES_UNOFFICIAL="$KEYWORDS_UNOVARPG|$KEYWORDS_VORTEX|$KEYWORDS_DELUGERPG"

#Final grouping

KEYWORDS_POKEMONGAMES_ALL="$KEYWORDS_POKEMONGAMES_1|$KEYWORDS_POKEMONGAMES_2|$KEYWORDS_POKEMONGAMES_3|$KEYWORDS_POKEMONGAMES_4|$KEYWORDS_POKEMONGAMES_5|$KEYWORDS_POKEMONGAMES_6|$KEYWORDS_POKEMONGAMES_UNOFFICIAL"

if [ "$1" == "" ];
then

  debug_start "Pokemon games"

  RED=$(egrep -i "$KEYWORDS_POKEMONRED" "$NEWPAGES")
  BLUE=$(egrep -i "$KEYWORDS_POKEMONBLUE" "$NEWPAGES")
  YELLOW=$(egrep -i "$KEYWORDS_POKEMONYELLOW" "$NEWPAGES")
  GOLD=$(egrep -i "$KEYWORDS_POKEMONGOLD" "$NEWPAGES")
  SILVER=$(egrep -i "$KEYWORDS_POKEMONSILVER" "$NEWPAGES")
  CRYSTAL=$(egrep -i "$KEYWORDS_POKEMONCRYSTAL" "$NEWPAGES")
  RUBY=$(egrep -i "$KEYWORDS_POKEMONRUBY" "$NEWPAGES")
  SAPPHIRE=$(egrep -i "$KEYWORDS_POKEMONSAPPHIRE" "$NEWPAGES")
  EMERALD=$(egrep -i "$KEYWORDS_POKEMONEMERALD" "$NEWPAGES")
  FIRERED=$(egrep -i "$KEYWORDS_POKEMONFIRERED" "$NEWPAGES")
  LEAFGREEN=$(egrep -i "$KEYWORDS_POKEMONLEAFGREEN" "$NEWPAGES")
  REDTEAM=$(egrep -i "$KEYWORDS_POKEMONREDRESCUETEAM" "$NEWPAGES")
  BLUETEAM=$(egrep -i "$KEYWORDS_POKEMONBLUERESCUETEAM" "$NEWPAGES")
  BLACK=$(egrep -i "$KEYWORDS_POKEMONBLACKONE" "$NEWPAGES" | egrep -iv "$KEYWORDS_POKEMONBLACKTWO")
  WHITE=$(egrep -i "$KEYWORDS_POKEMONWHITEONE" "$NEWPAGES" | egrep -iv "$KEYWORDS_POKEMONWHITETWO")
  DIAMOND=$(egrep -i "$KEYWORDS_POKEMONDIAMOND" "$NEWPAGES")
  PEARL=$(egrep -i "$KEYWORDS_POKEMONPEARL" "$NEWPAGES")
  PLATINUM=$(egrep -i "$KEYWORDS_POKEMONPLATINUM" "$NEWPAGES")
  HEARTGOLD=$(egrep -i "$KEYWORDS_POKEMONHEARTGOLD" "$NEWPAGES")
  SOULSILVER=$(egrep -i "$KEYWORDS_POKEMONSOULSILVER" "$NEWPAGES")
  BLACK2=$(egrep -i "$KEYWORDS_POKEMONBLACKTWO" "$NEWPAGES")
  WHITE2=$(egrep -i "$KEYWORDS_POKEMONWHITETWO" "$NEWPAGES")
  UNOVARPG=$(egrep -i "$KEYWORDS_UNOVARPG" "$NEWPAGES")
  DELUGERPG=$(egrep -i "$KEYWORDS_DELUGERPG" "$NEWPAGES")
  VORTEX=$(egrep -i "$KEYWORDS_VORTEX" "$NEWPAGES")
  POKEMONX=$(egrep -i "$KEYWORDS_POKEMONX" "$NEWPAGES")
  POKEMONY=$(egrep -i "$KEYWORDS_POKEMONY" "$NEWPAGES")
  RANGER=$(egrep -i "$KEYWORDS_POKEMONRANGER" "$NEWPAGES" | egrep -iv "$KEYWORDS_POKEMONRANGER_EXCLUDE")
  ALMIA=$(egrep -i "$KEYWORDS_POKEMONSHADOWSOFALMIA" "$NEWPAGES")
  GUARDIAN=$(egrep -i "$KEYWORDS_POKEMONGUARDIANSIGNS" "$NEWPAGES")
  GALEOFDARKNESS=$(egrep -i "$KEYWORDS_POKEMONXD" "$NEWPAGES")
  OMEGARUBY=$(egrep -i "$KEYWORDS_POKEMONOMEGARUBY" "$NEWPAGES")
  ALPHASAPPHIRE=$(egrep -i "$KEYWORDS_POKEMONALPHASAPPHIRE" "$NEWPAGES")

  categorize "RED" "Pokémon Red"
  categorize "BLUE" "Pokémon Blue"
  categorize "YELLOW" "Pokémon Yellow"
  categorize "GOLD" "Pokémon Gold"
  categorize "SILVER" "Pokémon Silver"
  categorize "CRYSTAL" "Pokémon Crystal"
  categorize "RUBY" "Pokémon Ruby"
  categorize "SAPPHIRE" "Pokémon Sapphire"
  categorize "EMERALD" "Pokémon Emerald"
  categorize "FIRERED" "Pokémon FireRed"
  categorize "LEAFGREEN" "Pokémon LeafGreen"
  categorize "REDTEAM" "Pokémon Mystery Dungeon: Red Rescue Team"
  categorize "BLUETEAM" "Pokémon Mystery Dungeon: Blue Rescue Team"
  categorize "BLACK" "Pokémon Black"
  categorize "WHITE" "Pokémon White"
  categorize "BLACK2" "Pokémon Black 2"
  categorize "WHITE2" "Pokémon White 2"
  categorize "DIAMOND" "Pokémon Diamond"
  categorize "PEARL" "Pokémon Pearl"
  categorize "PLATINUM" "Pokémon Platinum"
  categorize "HEARTGOLD" "Pokémon HeartGold"
  categorize "SOULSILVER" "Pokémon SoulSilver"
  categorize "UNOVARPG" "UnovaRPG"
  categorize "DELUGERPG" "DelugeRPG"
  categorize "POKEMONX" "Pokémon X"
  categorize "POKEMONY" "Pokémon Y"
  categorize "RANGER" "Pokémon Ranger"
  categorize "ALMIA" "Pokémon Ranger: Shadows of Almia"
  categorize "GUARDIAN" "Pokémon Ranger: Guardian Signs"
  categorize "GALEOFDARKNESS" "Pokémon XD: Gale of Darkness"
  categorize "VORTEX" "Pokémon Vortex"
  categorize "OMEGARUBY" "Pokémon Omega Ruby"
  categorize "ALPHASAPPHIRE" "Pokémon Alpha Sapphire"

  debug_end "Pokemon games"

fi