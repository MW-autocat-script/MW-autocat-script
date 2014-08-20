#!/bin/bash

POKEMONDIR="./catscripts/Entertainment/Franchises/Pokémon"

if [ "$1" == "" ];
then

  debug_start "Pokémon"

  . $POKEMONDIR/Pokémon_species/PokémonSpecies.sh

  ./catscripts/Entertainment/Video_games/Video_games_by_series/Pokémon\ games/PokémonGames.sh norun #KEYWORDS_POKEMONGAMES_ALL

  KEYWORDS_POKEMON="(Pokémon|Pokemon|Poke'mon)"
  KEYWORDS_POKEMON_EXCLUDE="$KEYWORDS_POKEMONGAMES_ALL|Abomasnow|Abra|Absol|Accelgor|Aerodactyl|Aggron|Aipom|Alakazam|Alomomola|Altaria|Ambipom|Amoonguss|Ampharos|Anorith|Arbok|Arcanine|Arceus|Archen|Archeops|Ariados|Armaldo|Aron|Articuno|Audino|Axew|Azelf|Azumarill|Azurill|Bagon|Baltoy|Banette|Barboach|Basculin|Bastiodon|Bayleef|Beartic|Beautifly|Beedrill|Beheeyem|Beldum|Bellossom|Bellsprout|Bibarel|Bidoof|Bisharp|Blastoise|Blaziken|Blissey|Blitzle|Boldore|Bonsly|Bouffalant|Braviary|Breloom|Bronzong|Bronzor|Budew|Buizel|Bulbasaur|Buneary|Burmy|Butterfree|Cacnea|Cacturne|Camerupt|Carnivine|Carracosta|Carvanha|Cascoon|Castform|Caterpie|Celebi|Chandelure|Chansey|Charizard|Charmander|Charmeleon|Chatot|Cherrim|Cherubi|Chikorita|Chimchar|Chimecho|Chinchou|Chingling|Cinccino|Clamperl|Claydol|Clefable|Clefairy|Cleffa|Cloyster|Cobalion|Cofagrigus|Combee|Combusken|Conkeldurr|Corphish|Corsola|Cottonee|Cradily|Cranidos|Crawdaunt|Cresselia|Croagunk|Crobat|Croconaw|Crustle|Cryogonal|Cubchoo|Cubone|Cyndaquil|Darkrai|Darmanitan|Darumaka|Deerling|Deino|Delcatty|Delibird|Deoxys|Dewgong|Dewott|Dialga|Diglett|Ditto|Dodrio|Doduo|Donphan|Dragonair|Dragonite|Drapion|Dratini|Drifblim|Drifloon|Drilbur|Drowzee|Druddigon|Ducklett|Dugtrio|Dunsparce|Duosion|Durant|Dusclops|Dusknoir|Duskull|Dustox|Dwebble|Eelektrik|Eelektross|Eevee|Ekans|Electabuzz|Electivire|Electrike|Electrode|Elekid|Elgyem|Emboar|Emolga|Empoleon|Entei|Escavalier|Espeon|Excadrill|Exeggcute|Exeggutor|Exploud|Farfetch'd|Fearow|Feebas|Feraligatr|Ferroseed|Ferrothorn|Finneon|Flaaffy|Flareon|Floatzel|Flygon|Foongus|Forretress|Fraxure|Frillish|Froslass|Furret|Gabite|Gallade|Galvantula|Garbodor|Garchomp|Gardevoir|Gastly|Gastrodon|Genesect|Gengar|Geodude|Gible|Gigalith|Girafarig|Giratina|Glaceon|Glalie|Glameow|Gligar|Gliscor|Gloom|Golbat|Goldeen|Golduck|Golem|Golett|Golurk|Gorebyss|Gothita|Gothitelle|Gothorita|Granbull|Graveler|Grimer|Grotle|Groudon|Grovyle|Growlithe|Grumpig|Gulpin|Gurdurr|Gyarados|Happiny|Hariyama|Haunter|Haxorus|Heatmor|Heatran|Heracross|Herdier|Hippopotas|Hippowdon|Hitmonchan|Hitmonlee|Hitmontop|Ho-oh|Honchkrow|Hoothoot|Hoppip|Horsea|Houndoom|Houndour|Huntail|Hydreigon|Hypno|Igglybuff|Illumise|Infernape|Ivysaur|Jellicent|Jigglypuff|Jirachi|Jolteon|Joltik|Jumpluff|Jynx|Kabuto|Kabutops|Kadabra|Kakuna|Kangaskhan|Karrablast|Kecleon|Keldeo|Kingdra|Kingler|Kirlia|Klang|Klink|Klinklang|Koffing|Krabby|Kricketot|Kricketune|Krokorok|Krookodile|Kyogre|Kyurem|Lairon|Lampent|Landorus|Lanturn|Lapras|Larvesta|Larvitar|Latias|Latios|Leafeon|Leavanny|Ledian|Ledyba|Lickilicky|Lickitung|Liepard|Lileep|Lilligant|Lillipup|Linoone|Litwick|Lombre|Lopunny|Lotad|Loudred|Lucario|Ludicolo|Lugia|Lumineon|Lunatone|Luvdisc|Luxio|Luxray|Machamp|Machoke|Machop|Magby|Magcargo|Magikarp|Magmar|Magmortar|Magnemite|Magneton|Magnezone|Makuhita|Mamoswine|Manaphy|Mandibuzz|Manectric|Mankey|Mantine|Mantyke|Maractus|Mareep|Marill|Marowak|Marshtomp|Masquerain|Mawile|Medicham|Meditite|Meganium|Meloetta|Meowth|Mesprit|Metagross|Metang|Metapod|Mew|Mewtwo|Mienfoo|Mienshao|Mightyena|Milotic|Miltank|Mime Jr|Minccino|Minun|Misdreavus|Mismagius|Moltres|Monferno|Mothim|Mr(|.) Mime|Mudkip|Muk|Munchlax|Munna|Murkrow|Musharna|Natu|Nidoking|Nidoqueen|Nidoran|Nidorina|Nidorino|Nincada|Ninetales|Ninjask|Noctowl|Nosepass|Numel|Nuzleaf|Octillery|Oddish|Omanyte|Omastar|Onix|Oshawott|Pachirisu|Palkia|Palpitoad|Panpour|Pansage|Pansear|Paras|Parasect|Patrat|Pawniard|Pelipper|Persian|Petilil|Phanpy|Phione|Pichu|Pidgeot|Pidgeotto|Pidgey|Pidove|Pignite|Pikachu|Piloswine|Pineco|Pinsir|Piplup|Plusle|Politoed|Poliwag|Poliwhirl|Poliwrath|Ponyta|Poochyena|Porygon|Porygon-Z|Porygon2|Primeape|Prinplup|Probopass|Psyduck|Pupitar|Purrloin|Purugly|Quagsire|Quilava|Qwilfish|Raichu|Raikou|Ralts|Rampardos|Rapidash|Raticate|Rattata|Rayquaza|Regice|Regigigas|Regirock|Registeel|Relicanth|Remoraid|Reshiram|Reuniclus|Rhydon|Rhyhorn|Rhyperior|Riolu|Roggenrola|Roselia|Roserade|Rotom|Rufflet|Sableye|Salamence|Samurott|Sandile|Sandshrew|Sandslash|Sawk|Sawsbuck|Sceptile|Scizor|Scolipede|Scrafty|Scraggy|Scyther|Seadra|Seaking|Sealeo|Seedot|Seel|Seismitoad|Sentret|Serperior|Servine|Seviper|Sewaddle|Sharpedo|Shaymin|Shedinja|Shelgon|Shellder|Shellos|Shelmet|Shieldon|Shiftry|Shinx|Shroomish|Shuckle|Shuppet|Sigilyph|Silcoon|Simipour|Simisage|Simisear|Skarmory|Skiploom|Skitty|Skorupi|Skuntank|Slaking|Slakoth|Slowbro|Slowking|Slowpoke|Slugma|Smeargle|Smoochum|Sneasel|Snivy|Snorlax|Snorunt|Snover|Snubbull|Solosis|Solrock|Spearow|Spheal|Spinarak|Spinda|Spiritomb|Spoink|Squirtle|Stantler|Staraptor|Staravia|Starly|Starmie|Staryu|Steelix|Stoutland|Stunfisk|Stunky|Sudowoodo|Suicune|Sunflora|Sunkern|Surskit|Swablu|Swadloon|Swalot|Swampert|Swanna|Swellow|Swinub|Swoobat|Taillow|Tangela|Tangrowth|Tauros|Teddiursa|Tentacool|Tentacruel|Tepig|Terrakion|Throh|Thundurus|Timburr|Tirtouga|Togekiss|Togepi|Togetic|Torchic|Torkoal|Tornadus|Torterra|Totodile|Toxicroak|Tranquill|Trapinch|Treecko|Tropius|Trubbish|Turtwig|Tympole|Tynamo|Typhlosion|Tyranitar|Tyrogue|Umbreon|Unfezant|Unown|Ursaring|Uxie|Vanillish|Vanillite|Vanilluxe|Vaporeon|Venipede|Venomoth|Venonat|Venusaur|Vespiquen|Vibrava|Victini|Victreebel|Vigoroth|Vileplume|Virizion|Volbeat|Volcarona|Voltorb|Vullaby|Vulpix|Wailmer|Wailord|Walrein|Wartortle|Watchog|Weavile|Weedle|Weepinbell|Weezing|Whimsicott|Whirlipede|Whiscash|Whismur|Wigglytuff|Wingull|Wobbuffet|Woobat|Wooper|Wormadam|Wurmple|Wynaut|Xatu|Yamask|Yanma|Yanmega|Zangoose|Zapdos|Zebstrika|Zekrom|Zigzagoon|Zoroark|Zorua|Zubat|Zweilous|anime|\bAsh\b|episode"


  POKEMON=$(egrep -i "$KEYWORDS_POKEMON" "$NEWPAGES" | egrep -iv "$KEYWORDS_POKEMON_EXCLUDE")

  if [ "$POKEMON" != "" ];
  then
    printf "%s" "$POKEMON" > Pokemon.txt
    export CATFILE="Pokemon.txt"
    export CATNAME="Pokémon"
    $CATEGORIZE
    rm Pokemon.txt
    unset POKEMON
  fi

  debug_end "Pokémon"

fi
