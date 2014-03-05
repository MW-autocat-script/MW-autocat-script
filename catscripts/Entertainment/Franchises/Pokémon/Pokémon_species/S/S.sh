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

  SABLEYE=`egrep -i "$KEYWORDS_SABLEYE" newpages.txt`
  SALAMENCE=`egrep -i "$KEYWORDS_SALAMENCE" newpages.txt`
  SAMUROTT=`egrep -i "$KEYWORDS_SAMUROTT" newpages.txt`
  SANDILE=`egrep -i "$KEYWORDS_SANDILE" newpages.txt`
  SANDSHREW=`egrep -i "$KEYWORDS_SANDSHREW" newpages.txt`
  SANDSLASH=`egrep -i "$KEYWORDS_SANDSLASH" newpages.txt`
  SAWK=`egrep -i "$KEYWORDS_SAWK" newpages.txt`
  SAWSBUCK=`egrep -i "$KEYWORDS_SAWSBUCK" newpages.txt`
  SCEPTILE=`egrep -i "$KEYWORDS_SCEPTILE" newpages.txt`
  SCIZOR=`egrep -i "$KEYWORDS_SCIZOR" newpages.txt`
  SCOLIPEDE=`egrep -i "$KEYWORDS_SCOLIPEDE" newpages.txt`
  SCRAFTY=`egrep -i "$KEYWORDS_SCRAFTY" newpages.txt`
  SCRAGGY=`egrep -i "$KEYWORDS_SCRAGGY" newpages.txt`
  SCYTHER=`egrep -i "$KEYWORDS_SCYTHER" newpages.txt`
  SEADRA=`egrep -i "$KEYWORDS_SEADRA" newpages.txt`
  SEAKING=`egrep -i "$KEYWORDS_SEAKING" newpages.txt`
  SEALEO=`egrep -i "$KEYWORDS_SEALEO" newpages.txt`
  SEEDOT=`egrep -i "$KEYWORDS_SEEDOT" newpages.txt`
  SEEL=`egrep -i "$KEYWORDS_SEEL" newpages.txt`
  SENTRET=`egrep -i "$KEYWORDS_SENTRET" newpages.txt`
  SERPERIOR=`egrep -i "$KEYWORDS_SERPERIOR" newpages.txt`
  SERVINE=`egrep -i "$KEYWORDS_SERVINE" newpages.txt`
  SEISMITOAD=`egrep -i "$KEYWORDS_SEISMITOAD" newpages.txt`
  SEVIPER=`egrep -i "$KEYWORDS_SEVIPER" newpages.txt`
  SEWADDLE=`egrep -i "$KEYWORDS_SEWADDLE" newpages.txt`
  SHARPEDO=`egrep -i "$KEYWORDS_SHARPEDO" newpages.txt`
  SHAYMIN="$(egrep -i "$KEYWORDS_SHAYMIN" newpages.txt)"
  SHEDINJA=`egrep -i "$KEYWORDS_SHEDINJA" newpages.txt`
  SHELGON=`egrep -i "$KEYWORDS_SHELGON" newpages.txt`
  SHELMET=`egrep -i "$KEYWORDS_SHELMET" newpages.txt`
  SHELLDER=`egrep -i "$KEYWORDS_SHELLDER" newpages.txt`
  SHELLOS=`egrep -i "$KEYWORDS_SHELLOS" newpages.txt`
  SHIELDON=`egrep -i "$KEYWORDS_SHIELDON" newpages.txt`
  SHIFTRY=`egrep -i "$KEYWORDS_SHIFTRY" newpages.txt`
  SHINX=`egrep -i "$KEYWORDS_SHINX" newpages.txt`
  SHROOMISH=`egrep -i "$KEYWORDS_SHROOMISH" newpages.txt`
  SHUCKLE=`egrep -i "$KEYWORDS_SHUCKLE" newpages.txt`
  SHUPPET=`egrep -i "$KEYWORDS_SHUPPET" newpages.txt`
  SIGILYPH=`egrep -i "$KEYWORDS_SIGILYPH" newpages.txt`
  SILCOON=`egrep -i "$KEYWORDS_SILCOON" newpages.txt`
  SIMIPOUR=`egrep -i "$KEYWORDS_SIMIPOUR" newpages.txt`
  SIMISAGE=`egrep -i "$KEYWORDS_SIMISAGE" newpages.txt`
  SIMISEAR=`egrep -i "$KEYWORDS_SIMISEAR" newpages.txt`
  SKARMORY=`egrep -i "$KEYWORDS_SKARMORY" newpages.txt`
  SKIPLOOM=`egrep -i "$KEYWORDS_SKIPLOOM" newpages.txt`
  SKITTY=`egrep -i "$KEYWORDS_SKITTY" newpages.txt`
  SKORUPI=`egrep -i "$KEYWORDS_SKORUPI" newpages.txt`
  SKUNTANK=`egrep -i "$KEYWORDS_SKUNTANK" newpages.txt`
  SLAKING=`egrep -i "$KEYWORDS_SLAKING" newpages.txt`
  SLAKOTH=`egrep -i "$KEYWORDS_SLAKOTH" newpages.txt`
  SLOWBRO=`egrep -i "$KEYWORDS_SLOWBRO" newpages.txt`
  SLOWKING=`egrep -i "$KEYWORDS_SLOWKING" newpages.txt`
  SLOWPOKE=`egrep -i "$KEYWORDS_SLOWPOKE" newpages.txt`
  SLUGMA=`egrep -i "$KEYWORDS_SLUGMA" newpages.txt`
  SMEARGLE=`egrep -i "$KEYWORDS_SMEARGLE" newpages.txt`
  SMOOCHUM=`egrep -i "$KEYWORDS_SMOOCHUM" newpages.txt`
  SNEASEL=`egrep -i "$KEYWORDS_SNEASEL" newpages.txt`
  SNIVY=`egrep -i "$KEYWORDS_SNIVY" newpages.txt`
  SNORLAX=`egrep -i "$KEYWORDS_SNORLAX" newpages.txt`
  SNORUNT=`egrep -i "$KEYWORDS_SNORUNT" newpages.txt`
  SNOVER=`egrep -i "$KEYWORDS_SNOVER" newpages.txt`
  SNUBBULL=`egrep -i "$KEYWORDS_SNUBBULL" newpages.txt`
  SOLOSIS=`egrep -i "$KEYWORDS_SOLOSIS" newpages.txt`
  SOLROCK=`egrep -i "$KEYWORDS_SOLROCK" newpages.txt`
  SPEAROW=`egrep -i "$KEYWORDS_SPEAROW" newpages.txt`
  SPHEAL=`egrep -i "$KEYWORDS_SPHEAL" newpages.txt`
  SPINARAK=`egrep -i "$KEYWORDS_SPINARAK" newpages.txt`
  SPINDA=`egrep -i "$KEYWORDS_SPINDA" newpages.txt`
  SPIRITOMB=`egrep -i "$KEYWORDS_SPIRITOMB" newpages.txt`
  SPOINK=`egrep -i "$KEYWORDS_SPOINK" newpages.txt`
  SQUIRTLE=`egrep -i "$KEYWORDS_SQUIRTLE" newpages.txt`
  STANTLER=`egrep -i "$KEYWORDS_STANTLER" newpages.txt`
  STARAPTOR=`egrep -i "$KEYWORDS_STARAPTOR" newpages.txt`
  STARAVIA=`egrep -i "$KEYWORDS_STARAVIA" newpages.txt`
  STARLY=`egrep -i "$KEYWORDS_STARLY" newpages.txt`
  STARMIE=`egrep -i "$KEYWORDS_STARMIE" newpages.txt`
  STARYU=`egrep -i "$KEYWORDS_STARYU" newpages.txt`
  STEELIX=`egrep -i "$KEYWORDS_STEELIX" newpages.txt`
  STOUTLAND=`egrep -i "$KEYWORDS_STOUTLAND" newpages.txt`
  STUNFISK=`egrep -i "$KEYWORDS_STUNFISK" newpages.txt`
  STUNKY=`egrep -i "$KEYWORDS_STUNKY" newpages.txt`
  SUDOWOODO=`egrep -i "$KEYWORDS_SUDOWOODO" newpages.txt`
  SUICUNE=`egrep -i "$KEYWORDS_SUICUNE" newpages.txt`
  SUNFLORA=`egrep -i "$KEYWORDS_SUNFLORA" newpages.txt`
  SUNKERN=`egrep -i "$KEYWORDS_SUNKERN" newpages.txt`
  SURSKIT=`egrep -i "$KEYWORDS_SURSKIT" newpages.txt`
  SWABLU=`egrep -i "$KEYWORDS_SWABLU" newpages.txt`
  SWADLOON=`egrep -i "$KEYWORDS_SWADLOON" newpages.txt`
  SWALOT=`egrep -i "$KEYWORDS_SWALOT" newpages.txt`
  SWAMPERT=`egrep -i "$KEYWORDS_SWAMPERT" newpages.txt`
  SWANNA=`egrep -i "$KEYWORDS_SWANNA" newpages.txt`
  SWELLOW=`egrep -i "$KEYWORDS_SWELLOW" newpages.txt`
  SWINUB=`egrep -i "$KEYWORDS_SWINUB" newpages.txt`
  SWOOBAT=`egrep -i "$KEYWORDS_SWOOBAT" newpages.txt`

  if [ "$SABLEYE" != "" ];
  then
    printf "$SABLEYE" > Sableye.txt
    export_category SABLEYE Sableye
  fi

  if [ "$SALAMENCE" != "" ];
  then
    printf "$SALAMENCE" > Salamence.txt
    export_category SALAMENCE Salamence
  fi

  if [ "$SAMUROTT" != "" ];
  then
    printf "$SAMUROTT" > Samurott.txt
    export_category SAMUROTT Samurott
  fi

  if [ "$SANDILE" != "" ];
  then
    printf "$SANDILE" > Sandile.txt
    export_category SANDILE Sandile
  fi

  if [ "$SANDSHREW" != "" ];
  then
    printf "$SANDSHREW" > Sandshrew.txt
    export_category SANDSHREW Sandshrew
  fi

  if [ "$SANDSHREW" != "" ];
  then
    printf "$SANDSLASH" > Sandslash.txt
    export_category SANDSLASH Sandslash
  fi

  if [ "$SAWK" != "" ];
  then
    printf "$SAWK" > Sawk.txt
    export_category SAWK Sawk
  fi

  if [ "$SAWSBUCK" != "" ];
  then
    printf "$SAWSBUCK" > Sawsbuck.txt
    export_category SAWSBUCK Sawsbuck
  fi

  if [ "$SCEPTILE" != "" ];
  then
    printf "$SCEPTILE" > Sceptile.txt
    export_category SCEPTILE Sceptile
  fi

  if [ "$SCIZOR" != "" ];
  then
    printf "$SCIZOR" > Scizor.txt
    export_category SCIZOR Scizor
  fi

  if [ "$SCOLIPEDE" != "" ];
  then
    printf "$SCOLIPEDE" > Scolipede.txt
    export_category SCOLIPEDE Scolipede
  fi

  if [ "$SCRAFTY" != "" ];
  then
    printf "$SCRAFTY" > Scrafty.txt
    export_category SCRAFTY Scrafty
  fi

  if [ "$SCRAGGY" != "" ];
  then
    printf "$SCRAGGY" > Scraggy.txt
    export_category SCRAGGY Scraggy
  fi

  if [ "$SCYTHER" != "" ];
  then
    printf "$SCYTHER" > Scyther.txt
    export_category SCYTHER Scyther
  fi

  if [ "$SEADRA" != "" ];
  then
    printf "$SEADRA" > Seadra.txt
    export_category SEADRA Seadra
  fi

  if [ "$SEAKING" != "" ];
  then
    printf "$SEAKING" > Seaking.txt
    export_category SEAKING Seaking
  fi

  if [ "$SEALEO" != "" ];
  then
    printf "$SEALEO" > Sealeo.txt
    export_category SEALEO Sealeo
  fi

  if [ "$SEEDOT" != "" ];
  then
    printf "$SEEDOT" > Seedot.txt
    export_category SEEDOT Seedot
  fi

  if [ "$SEEL" != "" ];
  then
    printf "$SEEL" > Seel.txt
    export_category SEEL Seel
  fi

  if [ "$SENTRET" != "" ];
  then
    printf "$SENTRET" > Sentret.txt
    export_category SENTRET Sentret
  fi

  if [ "$SERPERIOR" != "" ];
  then
    printf "$SERPERIOR" > Serperior.txt
    export_category SERPERIOR Serperior
  fi

  if [ "$SERVINE" != "" ];
  then
    printf "$SERVINE" > Servine.txt
    export_category SERVINE Servine
  fi

  if [ "$SEISMITOAD" != "" ];
  then
    printf "$SEISMITOAD" > Seismitoad.txt
    export_category SEISMITOAD Seismitoad
  fi

  if [ "$SEVIPER" != "" ];
  then
    printf "$SEVIPER" > Seviper.txt
    export_category SEVIPER Seviper
  fi

  if [ "$SEWADDLE" != "" ];
  then
    printf "$SEWADDLE" > Sewaddle.txt
    export_category SEWADDLE Sewaddle
  fi

  if [ "$SHARPEDO" != "" ];
  then
    printf "$SHARPEDO" > Sharpedo.txt
    export_category SHARPEDO Sharpedo
  fi

  if [ "$SHAYMIN" != "" ];
  then
    printf "$SHAYMIN" > Shaymin.txt
    export_category SHAYMIN Shaymin
  fi

  if [ "$SHEDINJA" != "" ];
  then
    printf "$SHEDINJA" > Shedinja.txt
    export_category SHEDINJA Shedinja
  fi

  if [ "$SHELGON" != "" ];
  then
    printf "$SHELGON" > Shelgon.txt
    export_category SHELGON Shelgon
  fi

  if [ "$SHELMET" != "" ];
  then
    printf "$SHELMET" > Shelmet.txt
    export_category SHELMET Shelmet
  fi

  if [ "$SHELLDER" != "" ];
  then
    printf "$SHELLDER" > Shellder.txt
    export_category SHELLDER Shellder
  fi

  if [ "$SHELLOS" != "" ];
  then
    printf "$SHELLOS" > Shellos.txt
    export_category SHELLOS Shellos
  fi

  if [ "$SHIELDON" != "" ];
  then
    printf "$SHIELDON" > Shieldon.txt
    export_category SHIELDON Shieldon
  fi

  if [ "$SHIFTRY" != "" ];
  then
    printf "$SHIFTRY" > Shiftry.txt
    export_category SHIFTRY Shiftry
  fi

  if [ "$SHINX" != "" ];
  then
    printf "$SHINX" > Shinx.txt
    export_category SHINX Shinx
  fi

  if [ "$SHROOMISH" != "" ];
  then
    printf "$SHROOMISH" > Shroomish.txt
    export_category SHROOMISH Shroomish
  fi

  if [ "$SHUCKLE" != "" ];
  then
    printf "$SHUCKLE" > Shuckle.txt
    export_category SHUCKLE Shuckle
  fi

  if [ "$SHUPPET" != "" ];
  then
    printf "$SHUPPET" > Shuppet.txt
    export_category SHUPPET Shuppet
  fi

  if [ "$SIGILYPH" != "" ];
  then
    printf "$SIGILYPH" > Sigilyph.txt
    export_category SIGILYPH Sigilyph
  fi

  if [ "$SILCOON" != "" ];
  then
    printf "$SILCOON" > Silcoon.txt
    export_category SILCOON Silcoon
  fi

  if [ "$SIMIPOUR" != "" ];
  then
    printf "$SIMIPOUR" > Simipour.txt
    export_category SIMIPOUR Simipour
  fi

  if [ "$SIMISAGE" != "" ];
  then
    printf "$SIMISAGE" > Simisage.txt
    export_category SIMISAGE Simisage
  fi

  if [ "$SIMISEAR" != "" ];
  then
    printf "$SIMISEAR" > Simisear.txt
    export_category SIMISEAR Simisear
  fi

  if [ "$SKARMORY" != "" ];
  then
    printf "$SKARMORY" > Skarmory.txt
    export_category SKARMORY Skarmory
  fi

  if [ "$SKIPLOOM" != "" ];
  then
    printf "$SKIPLOOM" > Skiploom.txt
    export_category SKIPLOOM Skiploom
  fi

  if [ "$SKITTY" != "" ];
  then
    printf "$SKITTY" > Skitty.txt
    export_category SKITTY Skitty
  fi

  if [ "$SKORUPI" != "" ];
  then
    printf "$SKORUPI" > Skorupi.txt
    export_category SKORUPI Skorupi
  fi

  if [ "$SKUNTANK" != "" ];
  then
    printf "$SKUNTANK" > Skuntank.txt
    export_category SKUNTANK Skuntank
  fi

  if [ "$SLAKING" != "" ];
  then
    printf "$SLAKING" > Slaking.txt
    export_category SLAKING Slaking
  fi

  if [ "$SLAKOTH" != "" ];
  then
    printf "$SLAKOTH" > Slakoth.txt
    export_category SLAKOTH Slakoth
  fi

  if [ "$SLOWBRO" != "" ];
  then
    printf "$SLOWBRO" > Slowbro.txt
    export_category SLOWBRO Slowbro
  fi

  if [ "$SLOWKING" != "" ];
  then
    printf "$SLOWKING" > Slowking.txt
    export_category SLOWKING Slowking
  fi

  if [ "$SLOWPOKE" != "" ];
  then
    printf "$SLOWPOKE" > Slowpoke.txt
    export_category SLOWPOKE Slowpoke
  fi

  if [ "$SLUGMA" != "" ];
  then
    printf "$SLUGMA" > Slugma.txt
    export_category SLUGMA Slugma
  fi

  if [ "$SMEARGLE" != "" ];
  then
    printf "$SMEARGLE" > Smeargle.txt
    export_category SMEARGLE Smeargle
  fi

  if [ "$SMOOCHUM" != "" ];
  then
    printf "$SMOOCHUM" > Smoochum.txt
    export_category SMOOCHUM Smoochum
  fi

  if [ "$SNEASEL" != "" ];
  then
    printf "$SNEASEL" > Sneasel.txt
    export_category SNEASEL Sneasel
  fi

  if [ "$SNIVY" != "" ];
  then
    printf "$SNIVY" > Snivy.txt
    export_category SNIVY Snivy
  fi

  if [ "$SNORLAX" != "" ];
  then
    printf "$SNORLAX" > Snorlax.txt
    export_category SNORLAX Snorlax
  fi

  if [ "$SNORUNT" != "" ];
  then
    printf "$SNORUNT" > Snorunt.txt
    export_category SNORUNT Snorunt
  fi

  if [ "$SNOVER" != "" ];
  then
    printf "$SNOVER" > Snover.txt
    export_category SNOVER Snover
  fi

  if [ "$SNUBBULL" != "" ];
  then
    printf "$SNUBBULL" > Snubbull.txt
    export_category SNUBBULL Snubbull
  fi

  if [ "$SOLOSIS" != "" ];
  then
    printf "$SOLOSIS" > Solosis.txt
    export_category SOLOSIS Solosis
  fi

  if [ "$SOLROCK" != "" ];
  then
    printf "$SOLROCK" > Solrock.txt
    export_category SOLROCK Solrock
  fi

  if [ "$SPEAROW" != "" ];
  then
    printf "$SPEAROW" > Spearow.txt
    export_category SPEAROW Spearow
  fi

  if [ "$SPHEAL" != "" ];
  then
    printf "$SPHEAL" > Spheal.txt
    export_category SPHEAL Spheal
  fi

  if [ "$SPINARAK" != "" ];
  then
    printf "$SPINARAK" > Spinarak.txt
    export_category SPINARAK Spinarak
  fi

  if [ "$SPINDA" != "" ];
  then
    printf "$SPINDA" > Spinda.txt
    export_category SPINDA Spinda
  fi

  if [ "$SPIRITOMB" != "" ];
  then
    printf "$SPIRITOMB" > Spiritomb.txt
    export_category SPIRITOMB Spiritomb
  fi

  if [ "$SPOINK" != "" ];
  then
    printf "$SPOINK" > Spoink.txt
    export_category SPOINK Spoink
  fi

  if [ "$SQUIRTLE" != "" ];
  then
    printf "$SQUIRTLE" > Squirtle.txt
    export_category SQUIRTLE Squirtle
  fi

  if [ "$STANTLER" != "" ];
  then
    printf "$STANTLER" > Stantler.txt
    export_category STANTLER Stantler
  fi

  if [ "$STARAPTOR" != "" ];
  then
    printf "$STARAPTOR" > Staraptor.txt
    export_category STARAPTOR Starraptor
  fi

  if [ "$STARAVIA" != "" ];
  then
    printf "$STARAVIA" > Staravia.txt
    export_category STARAVIA Staravia
  fi

  if [ "$STARLY" != "" ];
  then
    printf "$STARLY" > Starly.txt
    export_category STARLY Starly
  fi

  if [ "$STARMIE" != "" ];
  then
    printf "$STARMIE" > Starmie.txt
    export_category STARMIE Starmie
  fi

  if [ "$STARYU" != "" ];
  then
    printf "$STARYU" > Staryu.txt
    export_category STARYU Staryu
  fi

  if [ "$STEELIX" != "" ];
  then
    printf "$STEELIX" > Steelix.txt
    export_category STEELIX Steelix
  fi

  if [ "$STOUTLAND" != "" ];
  then
    printf "$STOUTLAND" > Stoutland.txt
    export_category STOUTLAND Stoutland
  fi

  if [ "$STUNFISK" != "" ];
  then
    printf "$STUNFISK" > Stunfisk.txt
    export_category STUNFISK Stunfisk
  fi

  if [ "$STUNKY" != "" ];
  then
    printf "$STUNKY" > Stunky.txt
    export_category STUNKY Stunky 
  fi

  if [ "$SUDOWOODO" != "" ];
  then
    printf "$SUDOWOODO" > Sudowoodo.txt
    export_category SUDOWOODO Sudowoodo
  fi

  if [ "$SUICUNE" != "" ];
  then
    printf "$SUICUNE" > Suicune.txt
    export_category SUICUNE Suicune
  fi

  if [ "$SUNFLORA" != "" ];
  then
    printf "$SUICUNE" > Sunflora.txt
    export_category SUNFLORA Sunflora
  fi

  if [ "$SUNKERN" != "" ];
  then
    printf "$SUNKERN" > Sunkern.txt
    export_category SUNKERN Sunkern
  fi

  if [ "$SURSKIT" != "" ];
  then
    printf "$SURSKIT" > Surskit.txt
    export_category SURSKIT Surskit
  fi

  if [ "$SWABLU" != "" ];
  then
    printf "$SWABLU" > Swablu.txt
    export_category SWABLU Swablu
  fi

  if [ "$SWADLOON" != "" ];
  then
    printf "$SWADLOON" > Swadloon.txt
    export_category SWADLOON Swadloon
  fi

  if [ "$SWALOT" != "" ];
  then
    printf "$SWALOT" > Swalot.txt
    export_category SWALOT Swalot
  fi

  if [ "$SWAMPERT" != "" ];
  then
    printf "$SWAMPERT" > Swampert.txt
    export_category SWAMPERT Swampert
  fi

  if [ "$SWANNA" != "" ];
  then
    printf "$SWANNA" > Swanna.txt
    export_category SWANNA Swanna
  fi

  if [ "$SWELLOW" != "" ];
  then
    printf "$SWELLOW" > Swellow.txt
    export_category SWELLOW Swellow
  fi

  if [ "$SWINUB" != "" ];
  then
    printf "$SWINUB" > Swinub.txt
    export_category SWINUB Swinub
  fi

  if [ "$SWOOBAT" != "" ];
  then
    printf "$SWOOBAT" > Swoobat.txt
    export_category SWOOBAT Swoobat
  fi

fi