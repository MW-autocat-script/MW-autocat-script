#!/bin/bash

KEYWORDS_GABITE="Gabite"
KEYWORDS_GALLADE="Gallade"
KEYWORDS_GALVANTULA="Galvantula"
KEYWORDS_GARBODOR="Garbodor"
KEYWORDS_GARCHOMP="Garchomp"
KEYWORDS_GARDEVOIR="Gardevoir"
KEYWORDS_GASTLY="Gastly"
KEYWORDS_GASTRODON="Gastrodon"
KEYWORDS_GENESECT="Genesect"
KEYWORDS_GENGAR="Gengar"
KEYWORDS_GEODUDE="Geodude"
KEYWORDS_GIBLE="\bGible"
KEYWORDS_GIGALITH="Gigalith"
KEYWORDS_GIRAFARIG="Girafarig"
KEYWORDS_GIRATINA="Giratina"
KEYWORDS_GLACEON="Glaceon"
KEYWORDS_GLALIE="Glalie"
KEYWORDS_GLAMEOW="Glameow"
KEYWORDS_GLIGAR="Gligar"
KEYWORDS_GLISCOR="Gliscor"
KEYWORDS_GLOOM="Gloom\b"
KEYWORDS_GOLBAT="Golbat"
KEYWORDS_GOLDEEN="Goldeen"
KEYWORDS_GOLDUCK="Golduck"
KEYWORDS_GOLEM="Golem"
KEYWORDS_GOLETT="Golett"
KEYWORDS_GOLURK="Golurk"
KEYWORDS_GOREBYSS="Gorebyss"
KEYWORDS_GOTHITA="Gothita"
KEYWORDS_GOTHITELLE="Gothitelle"
KEYWORDS_GOTHORITA="Gothorita"
KEYWORDS_GRANBULL="Granbull"
KEYWORDS_GRAVELER="Graveler"
KEYWORDS_GRIMER="Grimer"
KEYWORDS_GROTLE="Grotle"
KEYWORDS_GROUDON="Groudon"
KEYWORDS_GROVYLE="Grovyle"
KEYWORDS_GROWLITHE="Growlithe"
KEYWORDS_GRUMPIG="Grumpig"
KEYWORDS_GULPIN="Gulpin"
KEYWORDS_GURDURR="Gurdurr"
KEYWORDS_GYARADOS="Gyarados"
KEYWORDS_POKEMONSPECIES_G="$KEYWORDS_GABITE|$KEYWORDS_GALLADE|$KEYWORDS_GALVANTULA|$KEYWORDS_GARBODOR|$KEYWORDS_GARCHOMP|$KEYWORDS_GARDEVOIR|$KEYWORDS_GASTLY|$KEYWORDS_GASTRODON|$KEYWORDS_GENESECT|$KEYWORDS_GENGAR|$KEYWORDS_GEODUDE|$KEYWORDS_GIBLE|$KEYWORDS_GIGALITH|$KEYWORDS_GIRAFARIG|$KEYWORDS_GIRATINA|$KEYWORDS_GLACEON|$KEYWORDS_GLALIE|$KEYWORDS_GLAMEOW|$KEYWORDS_GLAMEOW|$KEYWORDS_GLIGAR|$KEYWORDS_GLIGAR|$KEYWORDS_GLISCOR|$KEYWORDS_GLOOM|$KEYWORDS_GOLBAT|$KEYWORDS_GOLDEEN|$KEYWORDS_GOLDUCK|$KEYWORDS_GOLEM|$KEYWORDS_GOLETT|$KEYWORDS_GOLURK|$KEYWORDS_GOREBYSS|$KEYWORDS_GOREBYSS|$KEYWORDS_GOTHITA|$KEYWORDS_GOTHITELLE|$KEYWORDS_GOTHORITA|$KEYWORDS_GRANBULL|$KEYWORDS_GRAVELER|$KEYWORDS_GRIMER|$KEYWORDS_GROTLE|$KEYWORDS_GROUDON|$KEYWORDS_GROVYLE|$KEYWORDS_GROWLITHE|$KEYWORDS_GRUMPIG|$KEYWORDS_GULPIN|$KEYWORDS_GURDURR|$KEYWORDS_GYARADOS"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pokemon G script"

  GABITE=$(egrep -i "$KEYWORDS_GABITE" "$NEWPAGES")
  GALLADE=$(egrep -i "$KEYWORDS_GALLADE" "$NEWPAGES")
  GARBODOR=$(egrep -i "$KEYWORDS_GARBODOR" "$NEWPAGES")
  GARCHOMP=$(egrep -i "$KEYWORDS_GARCHOMP" "$NEWPAGES")
  GARDEVOIR=$(egrep -i "$KEYWORDS_GARDEVOIR" "$NEWPAGES")
  GASTLY=$(egrep -i "$KEYWORDS_GASTLY" "$NEWPAGES")
  GASTRODON=$(egrep -i "$KEYWORDS_GASTRODON" "$NEWPAGES")
  GALVANTULA=$(egrep -i "$KEYWORDS_GALVANTULA" "$NEWPAGES")
  GENESECT=$(egrep -i "$KEYWORDS_GENESECT" "$NEWPAGES")
  GENGAR=$(egrep -i "$KEYWORDS_GENGAR" "$NEWPAGES")
  GEODUDE=$(egrep -i "$KEYWORDS_GEODUDE" "$NEWPAGES")
  GIBLE=$(egrep -i "$KEYWORDS_GIBLE" "$NEWPAGES")
  GIGALITH=$(egrep -i "$KEYWORDS_GIGALITH" "$NEWPAGES")
  GIRAFARIG=$(egrep -i "$KEYWORDS_GIRAFARIG" "$NEWPAGES")
  GIRATINA=$(egrep -i "$KEYWORDS_GIRATINA" "$NEWPAGES")
  GLACEON=$(egrep -i "$KEYWORDS_GLACEON" "$NEWPAGES")
  GLALIE=$(egrep -i "$KEYWORDS_GLALIE" "$NEWPAGES")
  GLAMEOW=$(egrep -i "$KEYWORDS_GLAMEOW" "$NEWPAGES")
  GLIGAR=$(egrep -i "$KEYWORDS_GLIGAR" "$NEWPAGES")
  GLISCOR=$(egrep -i "$KEYWORDS_GLISCOR" "$NEWPAGES")
  GLOOM=$(egrep -i "$KEYWORDS_GLOOM" "$NEWPAGES")
  GOLBAT=$(egrep -i "$KEYWORDS_GOLBAT" "$NEWPAGES")
  GOLDEEN=$(egrep -i "$KEYWORDS_GOLDEEN" "$NEWPAGES")
  GOLDUCK=$(egrep -i "$KEYWORDS_GOLDUCK" "$NEWPAGES")
  GOLEM=$(egrep -i "$KEYWORDS_GOLEM" "$NEWPAGES")
  GOLETT=$(egrep -i "$KEYWORDS_GOLETT" "$NEWPAGES")
  GOLURK=$(egrep -i "$KEYWORDS_GOLURK" "$NEWPAGES")
  GOREBYSS=$(egrep -i "$KEYWORDS_GOREBYSS" "$NEWPAGES")
  GOTHITA=$(egrep -i "$KEYWORDS_GOTHITA" "$NEWPAGES")
  GOTHITELLE=$(egrep -i "$KEYWORDS_GOTHITELLE" "$NEWPAGES")
  GOTHORITA=$(egrep -i "$KEYWORDS_GOTHORITA" "$NEWPAGES")
  GRANBULL=$(egrep -i "$KEYWORDS_GRANBULL" "$NEWPAGES")
  GRAVELER=$(egrep -i "$KEYWORDS_GRAVELER" "$NEWPAGES")
  GRIMER=$(egrep -i "$KEYWORDS_GRIMER" "$NEWPAGES")
  GROTLE=$(egrep -i "$KEYWORDS_GROTLE" "$NEWPAGES")
  GROUDON=$(egrep -i "$KEYWORDS_GROUDON" "$NEWPAGES")
  GROVYLE=$(egrep -i "$KEYWORDS_GROVYLE" "$NEWPAGES")
  GROWLITHE=$(egrep -i "$KEYWORDS_GROWLITHE" "$NEWPAGES")
  GRUMPIG=$(egrep -i "$KEYWORDS_GRUMPIG" "$NEWPAGES")
  GULPIN=$(egrep -i "$KEYWORDS_GULPIN" "$NEWPAGES")
  GURDURR=$(egrep -i "$KEYWORDS_GURDURR" "$NEWPAGES")
  GYARADOS=$(egrep -i "$KEYWORDS_GYARADOS" "$NEWPAGES")


  if [ "$GABITE" != "" ];
  then
    printf "%s" "$GABITE" > Gabite.txt
    export CATFILE="Gabite.txt"
    export CATNAME="Gabite"
    $CATEGORIZE
    rm Gabite.txt
    unset GABITE
  fi

  if [ "$GALLADE" != "" ];
  then
    printf "%s" "$GALLADE" > Gallade.txt
    export CATFILE="Gallade.txt"
    export CATNAME="Gallade"
    $CATEGORIZE
    rm Gallade.txt
    unset GALLADE
  fi

  if [ "$GARBODOR" != "" ];
  then
    printf "%s" "$GARBODOR" > Garbodor.txt
    export CATFILE="Garbodor.txt"
    export CATNAME="Garbodor"
    $CATEGORIZE
    rm Garbodor.txt
    unset GARBODOR
  fi

  if [ "$GARCHOMP" != "" ];
  then
    printf "%s" "$GARCHOMP" > Garchomp.txt    
    export CATFILE="Garchomp.txt"
    export CATNAME="Garchomp"
    $CATEGORIZE
    rm Garchomp.txt
    unset GARCHOMP
  fi

  if [ "$GARDEVOIR" != "" ];
  then
    printf "%s" "$GARDEVOIR" > Gardevoir.txt
    export CATFILE="Gardevoir.txt"
    export CATNAME="Gardevoir"
    $CATEGORIZE
    rm Gardevoir.txt
    unset GARDEVOIR
  fi

  if [ "$GASTLY" != "" ];
  then
    printf "%s" "$GASTLY" > Gastly.txt
    export CATFILE="Gastly.txt"
    export CATNAME="Gastly"
    $CATEGORIZE
    rm Gastly.txt
    unset GASTLY
  fi

  if [ "$GASTRODON" != "" ];
  then
    printf "%s" "$GASTRODON" > Gastrodon.txt
    export CATFILE="Gastrodon.txt"
    export CATNAME="Gastrodon"
    $CATEGORIZE
    rm Gastrodon.txt
    unset GASTRODON
  fi

  if [ "$GALVANTULA" != "" ];
  then
    printf "%s" "$GALVANTULA" > Galvantula.txt
    export CATFILE="Galvantula.txt"
    export CATNAME="Galvantula"
    $CATEGORIZE
    rm Galvantula.txt
    unset GALVANTULA
  fi

  if [ "$GENESECT" != "" ];
  then
    printf "%s" "$GENESECT" > Genesect.txt
    export CATFILE="Genesect.txt"
    export CATNAME="Genesect"
    $CATEGORIZE
    rm Genesect.txt
    unset GENESECT
  fi

  if [ "$GENGAR" != "" ];
  then
    printf "%s" "$GENGAR" > Gengar.txt
    export CATFILE="Gengar.txt"
    export CATNAME="Gengar"
    $CATEGORIZE
    rm Gengar.txt
    unset GENGAR
  fi

  if [ "$GEODUDE" != "" ];
  then
    printf "%s" "$GEODUDE" > Geodude.txt
    export CATFILE="Geodude.txt"
    export CATNAME="Geodude"
    $CATEGORIZE
    rm Geodude.txt
    unset GEODUDE
  fi

  if [ "$GIBLE" != "" ];
  then
    printf "%s" "$GIBLE" > Gible.txt
    export CATFILE="Gible.txt"
    export CATNAME="Gible"
    $CATEGORIZE
    rm Gible.txt
    unset GIBLE
  fi

  if [ "$GIGALITH" != "" ];
  then
    printf "%s" "$GIGALITH" > Gigalith.txt
    export CATFILE="Gigalith.txt"
    export CATNAME="Gigalith"
    $CATEGORIZE
    rm Gigalith.txt
    unset GIGALITH
  fi

  if [ "$GIRAFARIG" != "" ];
  then
    printf "%s" "$GIRAFARIG" > Girafarig.txt
    export CATFILE="Girafarig.txt"
    export CATNAME="Girafarig"
    $CATEGORIZE
    rm Girafarig.txt
    unset GIRAFARIG
  fi

  if [ "$GIRATINA" != "" ];
  then
    printf "%s" "$GIRATINA" > Giratina.txt
    export CATFILE="Giratina.txt"
    export CATNAME="Giratina"
    $CATEGORIZE
    rm Giratina.txt
    unset GIRATINA
  fi

  if [ "$GLACEON" != "" ];
  then
    printf "%s" "$GLACEON" > Glaceon.txt
    export CATFILE="Glaceon.txt"
    export CATNAME="Glaceon"
    $CATEGORIZE
    rm Glaceon.txt
    unset GLACEON
  fi

  if [ "$GLALIE" != "" ];
  then
    printf "%s" "$GLALIE" > Glalie.txt
    export CATFILE="Glalie.txt"
    export CATNAME="Glalie"
    $CATEGORIZE
    rm Glalie.txt
    unset GLALIE
  fi

  if [ "$GLAMEOW" != "" ];
  then
    printf "%s" "$GLAMEOW" > Glameow.txt
    export CATFILE="Glameow.txt"
    export CATNAME="Glameow"
    $CATEGORIZE
    rm Glameow.txt
    unset GLAMEOW
  fi

  if [ "$GLIGAR" != "" ];
  then
    printf "%s" "$GLIGAR" > Gligar.txt
    export CATFILE="Gligar.txt"
    export CATNAME="Gligar"
    $CATEGORIZE
    rm Gligar.txt
    unset GLIGAR
  fi

  if [ "$GLISCOR" != "" ];
  then
    printf "%s" "$GLISCOR" > Gliscor.txt
    export CATFILE="Gliscor.txt"
    export CATNAME="Gliscor"
    $CATEGORIZE
    rm Gliscor.txt
    unset GLISCOR
  fi

  if [ "$GLOOM" != "" ];
  then
    printf "%s" "$GLOOM" > Gloom.txt
    export CATFILE="Gloom.txt"
    export CATNAME="Gloom"
    $CATEGORIZE
    rm Gloom.txt
    unset GLOOM
  fi

  if [ "$GOLBAT" != "" ];
  then
    printf "%s" "$GOLBAT" > Golbat.txt
    export CATFILE="Golbat.txt"
    export CATNAME="Golbat"
    $CATEGORIZE
    rm Golbat.txt
    unset GOLBAT
  fi

  if [ "$GOLDEEN" != "" ];
  then
    printf "%s" "$GOLDEEN" > Goldeen.txt
    export CATFILE="Goldeen.txt"
    export CATNAME="Goldeen"
    $CATEGORIZE
    rm Goldeen.txt
    unset GOLDEEN
  fi

  if [ "$GOLDUCK" != "" ];
  then
    printf "%s" "$GOLDUCK" > Golduck.txt
    export CATFILE="Golduck.txt"
    export CATNAME="Golduck"
    $CATEGORIZE
    rm Golduck.txt
    unset GOLDUCK
  fi

  if [ "$GOLEM" != "" ];
  then
    printf "%s" "$GOLEM" > Golem.txt
    export CATFILE="Golem.txt"
    export CATNAME="Golem"
    $CATEGORIZE
    rm Golem.txt
    unset GOLEM
  fi

  if [ "$GOLETT" != "" ];
  then
    printf "%s" "$GOLETT" > Golett.txt
    export CATFILE="Golett.txt"
    export CATNAME="Golett"
    $CATEGORIZE
    rm Golett.txt
    unset GOLETT
  fi

  if [ "$GOLURK" != "" ];
  then
    printf "%s" "$GOLURK" > Golurk.txt
    export CATFILE="Golurk.txt"
    export CATNAME="Golurk"
    $CATEGORIZE
    rm Golurk.txt
    unset GOLURK
  fi

  if [ "$GOREBYSS" != "" ];
  then
    printf "%s" "$GOREBYSS" > Gorebyss.txt
    export CATFILE="Gorebyss.txt"
    export CATNAME="Gorebyss"
    $CATEGORIZE
    rm Gorebyss.txt
    unset GOREBYSS
  fi

  if [ "$GOTHITA" != "" ];
  then
    printf "%s" "$GOTHITA" > Gothita.txt
    export CATFILE="Gothita.txt"
    export CATNAME="Gothita"
    $CATEGORIZE
    rm Gothita.txt
    unset GOTHITA
  fi

  if [ "$GOTHITELLE" != "" ];
  then
    printf "%s" "$GOTHITELLE" > Gothitelle.txt
    export CATFILE="Gothitelle.txt"
    export CATNAME="Gothitelle"
    $CATEGORIZE
    rm Gothitelle.txt
    unset GOTHITELLE
  fi

  if [ "$GOTHORITA" != "" ];
  then
    printf "%s" "$GOTHORITA" > Gothorita.txt
    export CATFILE="Gothorita.txt"
    export CATNAME="Gothorita"
    $CATEGORIZE
    rm Gothorita.txt
    unset GOTHORITA
  fi

  if [ "$GRANBULL" != "" ];
  then
    printf "%s" "$GRANBULL" > Granbull.txt
    export CATFILE="Granbull.txt"
    export CATNAME="Granbull"
    $CATEGORIZE
    rm Granbull.txt
    unset GRANBULL
  fi

  if [ "$GRAVELER" != "" ];
  then
    printf "%s" "$GRAVELER" > Graveler.txt
    export CATFILE="Graveler.txt"
    export CATNAME="Graveler (Pokémon)"
    $CATEGORIZE
    rm Graveler.txt
    unset GRAVELER
  fi

  if [ "$GRIMER" != "" ];
  then
    printf "%s" "$GRIMER" > Grimer.txt
    export CATFILE="Grimer.txt"
    export CATNAME="Grimer"
    $CATEGORIZE
    rm Grimer.txt
    unset GRIMER
  fi

  if [ "$GROTLE" != "" ];
  then
    printf "%s" "$GROTLE" > Grotle.txt
    export CATFILE="Grotle.txt"
    export CATNAME="Grotle"
    $CATEGORIZE
    rm Grotle.txt
    unset GROTLE
  fi

  if [ "$GROUDON" != "" ];
  then
    printf "%s" "$GROUDON" > Groudon.txt
    export CATFILE="Groudon.txt"
    export CATNAME="Groudon"
    $CATEGORIZE
    rm Groudon.txt
    unset GROUDON
  fi

  if [ "$GROVYLE" != "" ];
  then
    printf "%s" "$GROVYLE" > Grovyle.txt
    export CATFILE="Grovyle.txt"
    export CATNAME="Grovyle"
    $CATEGORIZE
    rm Grovyle.txt
    unset GROVYLE
  fi

  if [ "$GROWLITHE" != "" ];
  then
    printf "%s" "$GROWLITHE" > Growlithe.txt
    export CATFILE="Growlithe.txt"
    export CATNAME="Growlithe"
    $CATEGORIZE
    rm Growlithe.txt
    unset GROWLITHE
  fi

  if [ "$GRUMPIG" != "" ];
  then
    printf "%s" "$GRUMPIG" > Grumpig.txt
    export CATFILE="Grumpig.txt"
    export CATNAME="Grumpig"
    $CATEGORIZE
    rm Grumpig.txt
    unset GRUMPIG
  fi

  if [ "$GULPIN" != "" ];
  then
    printf "%s" "$GULPIN" > Gulpin.txt
    export CATFILE="Gulpin.txt"
    export CATNAME="Gulpin"
    $CATEGORIZE
    rm Gulpin.txt
    unset GULPIN
  fi

  if [ "$GURDURR" != "" ];
  then
    printf "%s" "$GURDURR" > Gurdurr.txt
    export CATFILE="Gurdurr.txt"
    export CATNAME="Gurdurr"
    $CATEGORIZE
    rm Gurdurr.txt
    unset GURDURR
  fi

  if [ "$GYARADOS" != "" ];
  then
    printf "%s" "$GYARADOS" > Gyarados.txt
    export CATFILE="Gyarados.txt"
    export CATNAME="Gyarados"
    $CATEGORIZE
    rm Gyarados.txt
    unset GYARADOS
  fi

  debug_end "Pokemon G script"

fi