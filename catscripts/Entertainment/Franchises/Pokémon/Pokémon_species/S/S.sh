#!/bin/bash

export_category () {
  export CATFILE="$2".txt
  export CATNAME="$2"
  $CATEGORIZE
  rm "$2.txt"
  unset $1
} 


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

  if [ "$SABLEYE" != "" ];
  then
    printf "%s" "$SABLEYE" > Sableye.txt
    export_category SABLEYE Sableye
  fi

  if [ "$SALAMENCE" != "" ];
  then
    printf "%s" "$SALAMENCE" > Salamence.txt
    export_category SALAMENCE Salamence
  fi

  if [ "$SAMUROTT" != "" ];
  then
    printf "%s" "$SAMUROTT" > Samurott.txt
    export_category SAMUROTT Samurott
  fi

  if [ "$SANDILE" != "" ];
  then
    printf "%s" "$SANDILE" > Sandile.txt
    export_category SANDILE Sandile
  fi

  if [ "$SANDSHREW" != "" ];
  then
    printf "%s" "$SANDSHREW" > Sandshrew.txt
    export_category SANDSHREW Sandshrew
  fi

  if [ "$SANDSHREW" != "" ];
  then
    printf "%s" "$SANDSLASH" > Sandslash.txt
    export_category SANDSLASH Sandslash
  fi

  if [ "$SAWK" != "" ];
  then
    printf "%s" "$SAWK" > Sawk.txt
    export_category SAWK Sawk
  fi

  if [ "$SAWSBUCK" != "" ];
  then
    printf "%s" "$SAWSBUCK" > Sawsbuck.txt
    export_category SAWSBUCK Sawsbuck
  fi

  if [ "$SCEPTILE" != "" ];
  then
    printf "%s" "$SCEPTILE" > Sceptile.txt
    export_category SCEPTILE Sceptile
  fi

  if [ "$SCIZOR" != "" ];
  then
    printf "%s" "$SCIZOR" > Scizor.txt
    export_category SCIZOR Scizor
  fi

  if [ "$SCOLIPEDE" != "" ];
  then
    printf "%s" "$SCOLIPEDE" > Scolipede.txt
    export_category SCOLIPEDE Scolipede
  fi

  if [ "$SCRAFTY" != "" ];
  then
    printf "%s" "$SCRAFTY" > Scrafty.txt
    export_category SCRAFTY Scrafty
  fi

  if [ "$SCRAGGY" != "" ];
  then
    printf "%s" "$SCRAGGY" > Scraggy.txt
    export_category SCRAGGY Scraggy
  fi

  if [ "$SCYTHER" != "" ];
  then
    printf "%s" "$SCYTHER" > Scyther.txt
    export_category SCYTHER Scyther
  fi

  if [ "$SEADRA" != "" ];
  then
    printf "%s" "$SEADRA" > Seadra.txt
    export_category SEADRA Seadra
  fi

  if [ "$SEAKING" != "" ];
  then
    printf "%s" "$SEAKING" > Seaking.txt
    export_category SEAKING Seaking
  fi

  if [ "$SEALEO" != "" ];
  then
    printf "%s" "$SEALEO" > Sealeo.txt
    export_category SEALEO Sealeo
  fi

  if [ "$SEEDOT" != "" ];
  then
    printf "%s" "$SEEDOT" > Seedot.txt
    export_category SEEDOT Seedot
  fi

  if [ "$SEEL" != "" ];
  then
    printf "%s" "$SEEL" > Seel.txt
    export_category SEEL Seel
  fi

  if [ "$SENTRET" != "" ];
  then
    printf "%s" "$SENTRET" > Sentret.txt
    export_category SENTRET Sentret
  fi

  if [ "$SERPERIOR" != "" ];
  then
    printf "%s" "$SERPERIOR" > Serperior.txt
    export_category SERPERIOR Serperior
  fi

  if [ "$SERVINE" != "" ];
  then
    printf "%s" "$SERVINE" > Servine.txt
    export_category SERVINE Servine
  fi

  if [ "$SEISMITOAD" != "" ];
  then
    printf "%s" "$SEISMITOAD" > Seismitoad.txt
    export_category SEISMITOAD Seismitoad
  fi

  if [ "$SEVIPER" != "" ];
  then
    printf "%s" "$SEVIPER" > Seviper.txt
    export_category SEVIPER Seviper
  fi

  if [ "$SEWADDLE" != "" ];
  then
    printf "%s" "$SEWADDLE" > Sewaddle.txt
    export_category SEWADDLE Sewaddle
  fi

  if [ "$SHARPEDO" != "" ];
  then
    printf "%s" "$SHARPEDO" > Sharpedo.txt
    export_category SHARPEDO Sharpedo
  fi

  if [ "$SHAYMIN" != "" ];
  then
    printf "%s" "$SHAYMIN" > Shaymin.txt
    export_category SHAYMIN Shaymin
  fi

  if [ "$SHEDINJA" != "" ];
  then
    printf "%s" "$SHEDINJA" > Shedinja.txt
    export_category SHEDINJA Shedinja
  fi

  if [ "$SHELGON" != "" ];
  then
    printf "%s" "$SHELGON" > Shelgon.txt
    export_category SHELGON Shelgon
  fi

  if [ "$SHELMET" != "" ];
  then
    printf "%s" "$SHELMET" > Shelmet.txt
    export_category SHELMET Shelmet
  fi

  if [ "$SHELLDER" != "" ];
  then
    printf "%s" "$SHELLDER" > Shellder.txt
    export_category SHELLDER Shellder
  fi

  if [ "$SHELLOS" != "" ];
  then
    printf "%s" "$SHELLOS" > Shellos.txt
    export_category SHELLOS Shellos
  fi

  if [ "$SHIELDON" != "" ];
  then
    printf "%s" "$SHIELDON" > Shieldon.txt
    export_category SHIELDON Shieldon
  fi

  if [ "$SHIFTRY" != "" ];
  then
    printf "%s" "$SHIFTRY" > Shiftry.txt
    export_category SHIFTRY Shiftry
  fi

  if [ "$SHINX" != "" ];
  then
    printf "%s" "$SHINX" > Shinx.txt
    export_category SHINX Shinx
  fi

  if [ "$SHROOMISH" != "" ];
  then
    printf "%s" "$SHROOMISH" > Shroomish.txt
    export_category SHROOMISH Shroomish
  fi

  if [ "$SHUCKLE" != "" ];
  then
    printf "%s" "$SHUCKLE" > Shuckle.txt
    export_category SHUCKLE Shuckle
  fi

  if [ "$SHUPPET" != "" ];
  then
    printf "%s" "$SHUPPET" > Shuppet.txt
    export_category SHUPPET Shuppet
  fi

  if [ "$SIGILYPH" != "" ];
  then
    printf "%s" "$SIGILYPH" > Sigilyph.txt
    export_category SIGILYPH Sigilyph
  fi

  if [ "$SILCOON" != "" ];
  then
    printf "%s" "$SILCOON" > Silcoon.txt
    export_category SILCOON Silcoon
  fi

  if [ "$SIMIPOUR" != "" ];
  then
    printf "%s" "$SIMIPOUR" > Simipour.txt
    export_category SIMIPOUR Simipour
  fi

  if [ "$SIMISAGE" != "" ];
  then
    printf "%s" "$SIMISAGE" > Simisage.txt
    export_category SIMISAGE Simisage
  fi

  if [ "$SIMISEAR" != "" ];
  then
    printf "%s" "$SIMISEAR" > Simisear.txt
    export_category SIMISEAR Simisear
  fi

  if [ "$SKARMORY" != "" ];
  then
    printf "%s" "$SKARMORY" > Skarmory.txt
    export_category SKARMORY Skarmory
  fi

  if [ "$SKIPLOOM" != "" ];
  then
    printf "%s" "$SKIPLOOM" > Skiploom.txt
    export_category SKIPLOOM Skiploom
  fi

  if [ "$SKITTY" != "" ];
  then
    printf "%s" "$SKITTY" > Skitty.txt
    export_category SKITTY Skitty
  fi

  if [ "$SKORUPI" != "" ];
  then
    printf "%s" "$SKORUPI" > Skorupi.txt
    export_category SKORUPI Skorupi
  fi

  if [ "$SKUNTANK" != "" ];
  then
    printf "%s" "$SKUNTANK" > Skuntank.txt
    export_category SKUNTANK Skuntank
  fi

  if [ "$SLAKING" != "" ];
  then
    printf "%s" "$SLAKING" > Slaking.txt
    export_category SLAKING Slaking
  fi

  if [ "$SLAKOTH" != "" ];
  then
    printf "%s" "$SLAKOTH" > Slakoth.txt
    export_category SLAKOTH Slakoth
  fi

  if [ "$SLOWBRO" != "" ];
  then
    printf "%s" "$SLOWBRO" > Slowbro.txt
    export_category SLOWBRO Slowbro
  fi

  if [ "$SLOWKING" != "" ];
  then
    printf "%s" "$SLOWKING" > Slowking.txt
    export_category SLOWKING Slowking
  fi

  if [ "$SLOWPOKE" != "" ];
  then
    printf "%s" "$SLOWPOKE" > Slowpoke.txt
    export_category SLOWPOKE Slowpoke
  fi

  if [ "$SLUGMA" != "" ];
  then
    printf "%s" "$SLUGMA" > Slugma.txt
    export_category SLUGMA Slugma
  fi

  if [ "$SMEARGLE" != "" ];
  then
    printf "%s" "$SMEARGLE" > Smeargle.txt
    export_category SMEARGLE Smeargle
  fi

  if [ "$SMOOCHUM" != "" ];
  then
    printf "%s" "$SMOOCHUM" > Smoochum.txt
    export_category SMOOCHUM Smoochum
  fi

  if [ "$SNEASEL" != "" ];
  then
    printf "%s" "$SNEASEL" > Sneasel.txt
    export_category SNEASEL Sneasel
  fi

  if [ "$SNIVY" != "" ];
  then
    printf "%s" "$SNIVY" > Snivy.txt
    export_category SNIVY Snivy
  fi

  if [ "$SNORLAX" != "" ];
  then
    printf "%s" "$SNORLAX" > Snorlax.txt
    export_category SNORLAX Snorlax
  fi

  if [ "$SNORUNT" != "" ];
  then
    printf "%s" "$SNORUNT" > Snorunt.txt
    export_category SNORUNT Snorunt
  fi

  if [ "$SNOVER" != "" ];
  then
    printf "%s" "$SNOVER" > Snover.txt
    export_category SNOVER Snover
  fi

  if [ "$SNUBBULL" != "" ];
  then
    printf "%s" "$SNUBBULL" > Snubbull.txt
    export_category SNUBBULL Snubbull
  fi

  if [ "$SOLOSIS" != "" ];
  then
    printf "%s" "$SOLOSIS" > Solosis.txt
    export_category SOLOSIS Solosis
  fi

  if [ "$SOLROCK" != "" ];
  then
    printf "%s" "$SOLROCK" > Solrock.txt
    export_category SOLROCK Solrock
  fi

  if [ "$SPEAROW" != "" ];
  then
    printf "%s" "$SPEAROW" > Spearow.txt
    export_category SPEAROW Spearow
  fi

  if [ "$SPHEAL" != "" ];
  then
    printf "%s" "$SPHEAL" > Spheal.txt
    export_category SPHEAL Spheal
  fi

  if [ "$SPINARAK" != "" ];
  then
    printf "%s" "$SPINARAK" > Spinarak.txt
    export_category SPINARAK Spinarak
  fi

  if [ "$SPINDA" != "" ];
  then
    printf "%s" "$SPINDA" > Spinda.txt
    export_category SPINDA Spinda
  fi

  if [ "$SPIRITOMB" != "" ];
  then
    printf "%s" "$SPIRITOMB" > Spiritomb.txt
    export_category SPIRITOMB Spiritomb
  fi

  if [ "$SPOINK" != "" ];
  then
    printf "%s" "$SPOINK" > Spoink.txt
    export_category SPOINK Spoink
  fi

  if [ "$SQUIRTLE" != "" ];
  then
    printf "%s" "$SQUIRTLE" > Squirtle.txt
    export_category SQUIRTLE Squirtle
  fi

  if [ "$STANTLER" != "" ];
  then
    printf "%s" "$STANTLER" > Stantler.txt
    export_category STANTLER Stantler
  fi

  if [ "$STARAPTOR" != "" ];
  then
    printf "%s" "$STARAPTOR" > Staraptor.txt
    export_category STARAPTOR Starraptor
  fi

  if [ "$STARAVIA" != "" ];
  then
    printf "%s" "$STARAVIA" > Staravia.txt
    export_category STARAVIA Staravia
  fi

  if [ "$STARLY" != "" ];
  then
    printf "%s" "$STARLY" > Starly.txt
    export_category STARLY Starly
  fi

  if [ "$STARMIE" != "" ];
  then
    printf "%s" "$STARMIE" > Starmie.txt
    export_category STARMIE Starmie
  fi

  if [ "$STARYU" != "" ];
  then
    printf "%s" "$STARYU" > Staryu.txt
    export_category STARYU Staryu
  fi

  if [ "$STEELIX" != "" ];
  then
    printf "%s" "$STEELIX" > Steelix.txt
    export_category STEELIX Steelix
  fi

  if [ "$STOUTLAND" != "" ];
  then
    printf "%s" "$STOUTLAND" > Stoutland.txt
    export_category STOUTLAND Stoutland
  fi

  if [ "$STUNFISK" != "" ];
  then
    printf "%s" "$STUNFISK" > Stunfisk.txt
    export_category STUNFISK Stunfisk
  fi

  if [ "$STUNKY" != "" ];
  then
    printf "%s" "$STUNKY" > Stunky.txt
    export_category STUNKY Stunky 
  fi

  if [ "$SUDOWOODO" != "" ];
  then
    printf "%s" "$SUDOWOODO" > Sudowoodo.txt
    export_category SUDOWOODO Sudowoodo
  fi

  if [ "$SUICUNE" != "" ];
  then
    printf "%s" "$SUICUNE" > Suicune.txt
    export_category SUICUNE Suicune
  fi

  if [ "$SUNFLORA" != "" ];
  then
    printf "%s" "$SUICUNE" > Sunflora.txt
    export_category SUNFLORA Sunflora
  fi

  if [ "$SUNKERN" != "" ];
  then
    printf "%s" "$SUNKERN" > Sunkern.txt
    export_category SUNKERN Sunkern
  fi

  if [ "$SURSKIT" != "" ];
  then
    printf "%s" "$SURSKIT" > Surskit.txt
    export_category SURSKIT Surskit
  fi

  if [ "$SWABLU" != "" ];
  then
    printf "%s" "$SWABLU" > Swablu.txt
    export_category SWABLU Swablu
  fi

  if [ "$SWADLOON" != "" ];
  then
    printf "%s" "$SWADLOON" > Swadloon.txt
    export_category SWADLOON Swadloon
  fi

  if [ "$SWALOT" != "" ];
  then
    printf "%s" "$SWALOT" > Swalot.txt
    export_category SWALOT Swalot
  fi

  if [ "$SWAMPERT" != "" ];
  then
    printf "%s" "$SWAMPERT" > Swampert.txt
    export_category SWAMPERT Swampert
  fi

  if [ "$SWANNA" != "" ];
  then
    printf "%s" "$SWANNA" > Swanna.txt
    export_category SWANNA Swanna
  fi

  if [ "$SWELLOW" != "" ];
  then
    printf "%s" "$SWELLOW" > Swellow.txt
    export_category SWELLOW Swellow
  fi

  if [ "$SWINUB" != "" ];
  then
    printf "%s" "$SWINUB" > Swinub.txt
    export_category SWINUB Swinub
  fi

  if [ "$SWOOBAT" != "" ];
  then
    printf "%s" "$SWOOBAT" > Swoobat.txt
    export_category SWOOBAT Swoobat
  fi

  debug_end "Pokémon 'S' script"

fi