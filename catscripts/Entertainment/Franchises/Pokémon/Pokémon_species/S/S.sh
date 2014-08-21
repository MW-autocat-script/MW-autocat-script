#!/bin/bash

KEYWORDS_SABLEYE="Sableye"
KEYWORDS_SALAMENCE="Salamence"
KEYWORDS_SAMUROTT="Samurott"
KEYWORDS_SANDILE="Sandile"
KEYWORDS_SANDSHREW="Sandshrew"
KEYWORDS_SANDSLASH="Sandslash"
KEYWORDS_SAWK="Sawk"
KEYWORDS_SAWSBUCK="Sawsbuck"
KEYWORDS_SCEPTILE="Sceptile"
KEYWORDS_SCIZOR="Scizor"
KEYWORDS_SCOLIPEDE="Scolipede"
KEYWORDS_SCRAFTY="Scrafty"
KEYWORDS_SCRAGGY="Scraggy"
KEYWORDS_SCYTHER="Scyther"
KEYWORDS_SEADRA="Seadra"
KEYWORDS_SEAKING="Seaking"
KEYWORDS_SEALEO="Sealeo"
KEYWORDS_SEEDOT="Seedot"
KEYWORDS_SEEL="Seel"
KEYWORDS_SENTRET="Sentret"
KEYWORDS_SERPERIOR="Serperior"
KEYWORDS_SERVINE="Servine"
KEYWORDS_SEISMITOAD="Seismitoad"
KEYWORDS_SEVIPER="Seviper"
KEYWORDS_SEWADDLE="Sewaddle"
KEYWORDS_SHARPEDO="Sharpedo"
KEYWORDS_SHAYMIN="Shaymin"
KEYWORDS_SHEDINJA="Shedinja"
KEYWORDS_SHELGON="Shelgon"
KEYWORDS_SHELMET="Shelmet"
KEYWORDS_SHELLDER="Shellder"
KEYWORDS_SHELLOS="Shellos"
KEYWORDS_SHIELDON="Shieldon"
KEYWORDS_SHIFTRY="Shiftry"
KEYWORDS_SHINX="Shinx"
KEYWORDS_SHROOMISH="Shroomish"
KEYWORDS_SHUCKLE="Shuckle"
KEYWORDS_SHUPPET="Shuppet"
KEYWORDS_SIGILYPH="Sigilyph"
KEYWORDS_SILCOON="Silcoon"
KEYWORDS_SIMIPOUR="Simipour"
KEYWORDS_SIMISAGE="Simisage"
KEYWORDS_SIMISEAR="Simisear"
KEYWORDS_SKARMORY="Skarmory"
KEYWORDS_SKIPLOOM="Skiploom"
KEYWORDS_SKITTY="Skitty"
KEYWORDS_SKORUPI="Skorupi"
KEYWORDS_SKUNTANK="Skuntank"
KEYWORDS_SLAKING="Slaking"
KEYWORDS_SLAKOTH="Slakoth"
KEYWORDS_SLOWBRO="Slowbro"
KEYWORDS_SLOWKING="Slowking"
KEYWORDS_SLOWPOKE="Slowpoke"
KEYWORDS_SLUGMA="Slugma"
KEYWORDS_SMEARGLE="Smeargle"
KEYWORDS_SMOOCHUM="Smoochum"
KEYWORDS_SNEASEL="Sneasel"
KEYWORDS_SNIVY="Snivy"
KEYWORDS_SNORLAX="Snorlax"
KEYWORDS_SNORUNT="Snorunt"
KEYWORDS_SNOVER="Snover"
KEYWORDS_SNUBBULL="Snubbull"
KEYWORDS_SOLOSIS="Solosis"
KEYWORDS_SOLROCK="Solrock"
KEYWORDS_SPEAROW="Spearow"
KEYWORDS_SPHEAL="Spheal"
KEYWORDS_SPINARAK="Spinarak"
KEYWORDS_SPINDA="Spinda"
KEYWORDS_SPIRITOMB="Spiritomb"
KEYWORDS_SPOINK="Spoink"
KEYWORDS_SQUIRTLE="Squirtle"
KEYWORDS_STANTLER="Stantler"
KEYWORDS_STARAPTOR="Staraptor"
KEYWORDS_STARAVIA="Staravia"
KEYWORDS_STARLY="Starly"
KEYWORDS_STARMIE="Starmie"
KEYWORDS_STARYU="Staryu"
KEYWORDS_STEELIX="Steelix"
KEYWORDS_STOUTLAND="Stoutland"
KEYWORDS_STUNFISK="Stunfisk"
KEYWORDS_STUNKY="Stunky"
KEYWORDS_SUDOWOODO="Sudowoodo"
KEYWORDS_SUICUNE="Suicune"
KEYWORDS_SUNFLORA="Sunflora"
KEYWORDS_SUNKERN="Sunkern"
KEYWORDS_SURSKIT="Surskit"
KEYWORDS_SWABLU="Swablu"
KEYWORDS_SWADLOON="Swadloon"
KEYWORDS_SWALOT="Swalot"
KEYWORDS_SWAMPERT="Swampert"
KEYWORDS_SWANNA="Swanna"
KEYWORDS_SWELLOW="Swellow"
KEYWORDS_SWINUB="Swinub"
KEYWORDS_SWOOBAT="Swoobat"

if [ "$1" == "" ]; #Normal operation
then  

  debug_start "Pokémon 'S' script"  

  SABLEYE=$(egrep -i "$KEYWORDS_SABLEYE" "$NEWPAGES")
  SALAMENCE=$(egrep -i "$KEYWORDS_SALAMENCE" "$NEWPAGES")
  SAMUROTT=$(egrep -i "$KEYWORDS_SAMUROTT" "$NEWPAGES")
  SANDILE=$(egrep -i "$KEYWORDS_SANDILE" "$NEWPAGES")
  SANDSHREW=$(egrep -i "$KEYWORDS_SANDSHREW" "$NEWPAGES")
  SANDSLASH=$(egrep -i "$KEYWORDS_SANDSLASH" "$NEWPAGES")
  SAWK=$(egrep -i "$KEYWORDS_SAWK" "$NEWPAGES")
  SAWSBUCK=$(egrep -i "$KEYWORDS_SAWSBUCK" "$NEWPAGES")
  SCEPTILE=$(egrep -i "$KEYWORDS_SCEPTILE" "$NEWPAGES")
  SCIZOR=$(egrep -i "$KEYWORDS_SCIZOR" "$NEWPAGES")
  SCOLIPEDE=$(egrep -i "$KEYWORDS_SCOLIPEDE" "$NEWPAGES")
  SCRAFTY=$(egrep -i "$KEYWORDS_SCRAFTY" "$NEWPAGES")
  SCRAGGY=$(egrep -i "$KEYWORDS_SCRAGGY" "$NEWPAGES")
  SCYTHER=$(egrep -i "$KEYWORDS_SCYTHER" "$NEWPAGES")
  SEADRA=$(egrep -i "$KEYWORDS_SEADRA" "$NEWPAGES")
  SEAKING=$(egrep -i "$KEYWORDS_SEAKING" "$NEWPAGES")
  SEALEO=$(egrep -i "$KEYWORDS_SEALEO" "$NEWPAGES")
  SEEDOT=$(egrep -i "$KEYWORDS_SEEDOT" "$NEWPAGES")
  SEEL=$(egrep -i "$KEYWORDS_SEEL" "$NEWPAGES")
  SENTRET=$(egrep -i "$KEYWORDS_SENTRET" "$NEWPAGES")
  SERPERIOR=$(egrep -i "$KEYWORDS_SERPERIOR" "$NEWPAGES")
  SERVINE=$(egrep -i "$KEYWORDS_SERVINE" "$NEWPAGES")
  SEISMITOAD=$(egrep -i "$KEYWORDS_SEISMITOAD" "$NEWPAGES")
  SEVIPER=$(egrep -i "$KEYWORDS_SEVIPER" "$NEWPAGES")
  SEWADDLE=$(egrep -i "$KEYWORDS_SEWADDLE" "$NEWPAGES")
  SHARPEDO=$(egrep -i "$KEYWORDS_SHARPEDO" "$NEWPAGES")
  SHAYMIN=$(egrep -i "$KEYWORDS_SHAYMIN" "$NEWPAGES")
  SHEDINJA=$(egrep -i "$KEYWORDS_SHEDINJA" "$NEWPAGES")
  SHELGON=$(egrep -i "$KEYWORDS_SHELGON" "$NEWPAGES")
  SHELMET=$(egrep -i "$KEYWORDS_SHELMET" "$NEWPAGES")
  SHELLDER=$(egrep -i "$KEYWORDS_SHELLDER" "$NEWPAGES")
  SHELLOS=$(egrep -i "$KEYWORDS_SHELLOS" "$NEWPAGES")
  SHIELDON=$(egrep -i "$KEYWORDS_SHIELDON" "$NEWPAGES")
  SHIFTRY=$(egrep -i "$KEYWORDS_SHIFTRY" "$NEWPAGES")
  SHINX=$(egrep -i "$KEYWORDS_SHINX" "$NEWPAGES")
  SHROOMISH=$(egrep -i "$KEYWORDS_SHROOMISH" "$NEWPAGES")
  SHUCKLE=$(egrep -i "$KEYWORDS_SHUCKLE" "$NEWPAGES")
  SHUPPET=$(egrep -i "$KEYWORDS_SHUPPET" "$NEWPAGES")
  SIGILYPH=$(egrep -i "$KEYWORDS_SIGILYPH" "$NEWPAGES")
  SILCOON=$(egrep -i "$KEYWORDS_SILCOON" "$NEWPAGES")
  SIMIPOUR=$(egrep -i "$KEYWORDS_SIMIPOUR" "$NEWPAGES")
  SIMISAGE=$(egrep -i "$KEYWORDS_SIMISAGE" "$NEWPAGES")
  SIMISEAR=$(egrep -i "$KEYWORDS_SIMISEAR" "$NEWPAGES")
  SKARMORY=$(egrep -i "$KEYWORDS_SKARMORY" "$NEWPAGES")
  SKIPLOOM=$(egrep -i "$KEYWORDS_SKIPLOOM" "$NEWPAGES")
  SKITTY=$(egrep -i "$KEYWORDS_SKITTY" "$NEWPAGES")
  SKORUPI=$(egrep -i "$KEYWORDS_SKORUPI" "$NEWPAGES")
  SKUNTANK=$(egrep -i "$KEYWORDS_SKUNTANK" "$NEWPAGES")
  SLAKING=$(egrep -i "$KEYWORDS_SLAKING" "$NEWPAGES")
  SLAKOTH=$(egrep -i "$KEYWORDS_SLAKOTH" "$NEWPAGES")
  SLOWBRO=$(egrep -i "$KEYWORDS_SLOWBRO" "$NEWPAGES")
  SLOWKING=$(egrep -i "$KEYWORDS_SLOWKING" "$NEWPAGES")
  SLOWPOKE=$(egrep -i "$KEYWORDS_SLOWPOKE" "$NEWPAGES")
  SLUGMA=$(egrep -i "$KEYWORDS_SLUGMA" "$NEWPAGES")
  SMEARGLE=$(egrep -i "$KEYWORDS_SMEARGLE" "$NEWPAGES")
  SMOOCHUM=$(egrep -i "$KEYWORDS_SMOOCHUM" "$NEWPAGES")
  SNEASEL=$(egrep -i "$KEYWORDS_SNEASEL" "$NEWPAGES")
  SNIVY=$(egrep -i "$KEYWORDS_SNIVY" "$NEWPAGES")
  SNORLAX=$(egrep -i "$KEYWORDS_SNORLAX" "$NEWPAGES")
  SNORUNT=$(egrep -i "$KEYWORDS_SNORUNT" "$NEWPAGES")
  SNOVER=$(egrep -i "$KEYWORDS_SNOVER" "$NEWPAGES")
  SNUBBULL=$(egrep -i "$KEYWORDS_SNUBBULL" "$NEWPAGES")
  SOLOSIS=$(egrep -i "$KEYWORDS_SOLOSIS" "$NEWPAGES")
  SOLROCK=$(egrep -i "$KEYWORDS_SOLROCK" "$NEWPAGES")
  SPEAROW=$(egrep -i "$KEYWORDS_SPEAROW" "$NEWPAGES")
  SPHEAL=$(egrep -i "$KEYWORDS_SPHEAL" "$NEWPAGES")
  SPINARAK=$(egrep -i "$KEYWORDS_SPINARAK" "$NEWPAGES")
  SPINDA=$(egrep -i "$KEYWORDS_SPINDA" "$NEWPAGES")
  SPIRITOMB=$(egrep -i "$KEYWORDS_SPIRITOMB" "$NEWPAGES")
  SPOINK=$(egrep -i "$KEYWORDS_SPOINK" "$NEWPAGES")
  SQUIRTLE=$(egrep -i "$KEYWORDS_SQUIRTLE" "$NEWPAGES")
  STANTLER=$(egrep -i "$KEYWORDS_STANTLER" "$NEWPAGES")
  STARAPTOR=$(egrep -i "$KEYWORDS_STARAPTOR" "$NEWPAGES")
  STARAVIA=$(egrep -i "$KEYWORDS_STARAVIA" "$NEWPAGES")
  STARLY=$(egrep -i "$KEYWORDS_STARLY" "$NEWPAGES")
  STARMIE=$(egrep -i "$KEYWORDS_STARMIE" "$NEWPAGES")
  STARYU=$(egrep -i "$KEYWORDS_STARYU" "$NEWPAGES")
  STEELIX=$(egrep -i "$KEYWORDS_STEELIX" "$NEWPAGES")
  STOUTLAND=$(egrep -i "$KEYWORDS_STOUTLAND" "$NEWPAGES")
  STUNFISK=$(egrep -i "$KEYWORDS_STUNFISK" "$NEWPAGES")
  STUNKY=$(egrep -i "$KEYWORDS_STUNKY" "$NEWPAGES")
  SUDOWOODO=$(egrep -i "$KEYWORDS_SUDOWOODO" "$NEWPAGES")
  SUICUNE=$(egrep -i "$KEYWORDS_SUICUNE" "$NEWPAGES")
  SUNFLORA=$(egrep -i "$KEYWORDS_SUNFLORA" "$NEWPAGES")
  SUNKERN=$(egrep -i "$KEYWORDS_SUNKERN" "$NEWPAGES")
  SURSKIT=$(egrep -i "$KEYWORDS_SURSKIT" "$NEWPAGES")
  SWABLU=$(egrep -i "$KEYWORDS_SWABLU" "$NEWPAGES")
  SWADLOON=$(egrep -i "$KEYWORDS_SWADLOON" "$NEWPAGES")
  SWALOT=$(egrep -i "$KEYWORDS_SWALOT" "$NEWPAGES")
  SWAMPERT=$(egrep -i "$KEYWORDS_SWAMPERT" "$NEWPAGES")
  SWANNA=$(egrep -i "$KEYWORDS_SWANNA" "$NEWPAGES")
  SWELLOW=$(egrep -i "$KEYWORDS_SWELLOW" "$NEWPAGES")
  SWINUB=$(egrep -i "$KEYWORDS_SWINUB" "$NEWPAGES")
  SWOOBAT=$(egrep -i "$KEYWORDS_SWOOBAT" "$NEWPAGES")  

  categorize "SABLEYE" "Sableye"
  categorize "SALAMENCE" "Salamence"
  categorize "SAMUROTT" "Samurott"
  categorize "SANDILE" "Sandile"
  categorize "SANDSHREW" "Sandshrew"
  categorize "SANDSLASH" "Sandslash"
  categorize "SAWK" "Sawk"
  categorize "SAWSBUCK" "Sawsbuck"
  categorize "SCEPTILE" "Sceptile"
  categorize "SCIZOR" "Scizor"
  categorize "SCOLIPEDE" "Scolipede"
  categorize "SCRAFTY" "Scrafty"
  categorize "SCRAGGY" "Scraggy"
  categorize "SCYTHER" "Scyther"
  categorize "SEADRA" "Seadra"
  categorize "SEAKING" "Seaking"
  categorize "SEALEO" "Sealeo"
  categorize "SEEDOT" "Seedot"
  categorize "SEEL" "Seel"
  categorize "SENTRET" "Sentret"
  categorize "SERPERIOR" "Serperior"
  categorize "SERVINE" "Servine"
  categorize "SEISMITOAD" "Seismitoad"
  categorize "SEVIPER" "Seviper"
  categorize "SEWADDLE" "Sewaddle"
  categorize "SHARPEDO" "Sharpedo"
  categorize "SHAYMIN" "Shaymin"
  categorize "SHEDINJA" "Shedinja"
  categorize "SHELGON" "Shelgon"
  categorize "SHELMET" "Shelmet"
  categorize "SHELLDER" "Shellder"
  categorize "SHELLOS" "Shellos"
  categorize "SHIELDON" "Shieldon"
  categorize "SHIFTRY" "Shiftry"
  categorize "SHINX" "Shinx"
  categorize "SHROOMISH" "Shroomish"
  categorize "SHUCKLE" "Shuckle"
  categorize "SHUPPET" "Shuppet"
  categorize "SIGILYPH" "Sigilyph"
  categorize "SILCOON" "Silcoon"
  categorize "SIMIPOUR" "Simipour"
  categorize "SIMISAGE" "Simisage"
  categorize "SIMISEAR" "Simisear"
  categorize "SKARMORY" "Skarmory"
  categorize "SKIPLOOM" "Skiploom"
  categorize "SKITTY" "Skitty"
  categorize "SKORUPI" "Skorupi"
  categorize "SKUNTANK" "Skuntank"
  categorize "SLAKING" "Slaking"
  categorize "SLAKOTH" "Slakoth"
  categorize "SLOWBRO" "Slowbro"
  categorize "SLOWKING" "Slowking"
  categorize "SLOWPOKE" "Slowpoke"
  categorize "SLUGMA" "Slugma"
  categorize "SMEARGLE" "Smeargle"
  categorize "SMOOCHUM" "Smoochum"
  categorize "SNEASEL" "Sneasel"
  categorize "SNIVY" "Snivy"
  categorize "SNORLAX" "Snorlax"
  categorize "SNORUNT" "Snorunt"
  categorize "SNOVER" "Snover"
  categorize "SNUBBULL" "Snubbull"
  categorize "SOLOSIS" "Solosis"
  categorize "SOLROCK" "Solrock"
  categorize "SPEAROW" "Spearow"
  categorize "SPHEAL" "Spheal"
  categorize "SPINARAK" "Spinarak"
  categorize "SPINDA" "Spinda"
  categorize "SPIRITOMB" "Spiritomb"
  categorize "SPOINK" "Spoink"
  categorize "SQUIRTLE" "Squirtle"
  categorize "STANTLER" "Stantler"
  categorize "STARAPTOR" "Starraptor"
  categorize "STARAVIA" "Staravia"
  categorize "STARLY" "Starly"
  categorize "STARMIE" "Starmie"
  categorize "STARYU" "Staryu"
  categorize "STEELIX" "Steelix"
  categorize "STOUTLAND" "Stoutland"
  categorize "STUNFISK" "Stunfisk"
  categorize "STUNKY" "Stunky" 
  categorize "SUDOWOODO" "Sudowoodo"
  categorize "SUICUNE" "Suicune"
  categorize "SUNFLORA" "Sunflora"
  categorize "SUNKERN" "Sunkern"
  categorize "SURSKIT" "Surskit"
  categorize "SWABLU" "Swablu"
  categorize "SWADLOON" "Swadloon"
  categorize "SWALOT" "Swalot"
  categorize "SWAMPERT" "Swampert"
  categorize "SWANNA" "Swanna"
  categorize "SWELLOW" "Swellow"
  categorize "SWINUB" "Swinub"
  categorize "SWOOBAT" "Swoobat"  

  debug_end "Pokémon 'S' script"

fi