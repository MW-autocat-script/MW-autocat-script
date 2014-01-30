#!/bin/bash

KEYWORDS_REPTILES="Reptile"

KEYWORDS_TURTLES="Turtle|Tortoise|Terrapin"
KEYWORDS_TURTLES_EXCLUDE="tenneage|mutant|ninja|TMNT|Turtle(| )Knock"
KEYWORDS_TURTLES_ALL="$KEYWORDS_TURTLES"

KEYWORDS_SNAKES="Snake"
KEYWORDS_PYTHONS="python"
KEYWORDS_PYTHONS_EXCLUDE="in_python\b|program|script|computer(| )language|Metal(| )Gear|Monty(| )Python"
KEYWORDS_RATTLESNAKES="Rattle(| )snake"
KEYWORDS_BOA="\bBoa(|s)\b"
KEYWORDS_BOAS_EXCLUDE="$KEYWORDS_ANACONDAS|Boa(| )Hancock"
KEYWORDS_ANACONDAS="Anaconda"
KEYWORDS_COBRAS="Cobra"
KEYWORDS_COBRAS_EXCLUDE="Cobra(| )Commando|Shelby(| )Cobra|G(\.|)I(\.|)(| )Joe|Mustang"
KEYWORDS_SNAKES_EXCLUDE="Solid(| )Snake|$KEYWORDS_PYTHONS|Metal(| )Gear|$KEYWORDS_RATTLESNAKES|$KEYWORDS_BOA|$KEYWORDS_ANACONDAS|$KEYWORDS_COBRAS"
KEYWORDS_SNAKES_ALL="$KEYWORDS_SNAKES|$KEYWORDS_PYTHONS|$KEYWORDS_ANACONDAS|$KEYWORDS_RATTLESNAKES|$KEYWORDS_BOA|$KEYWORDS_COBRAS"

KEYWORDS_LIZARDS="Lizard"
KEYWORDS_IGUANAS="Iguana"
KEYWORDS_BEARDEDDRAGONS="Bearded(| )dragon"
KEYWORDS_GECKOS="Gecko"
KEYWORDS_SKINKS="Skink"
KEYWORDS_LIZARDS_EXCLUDE="$KEYWORDS_IGUANAS|$KEYWORDS_BEARDEDDRAGONS|$KEYWORDS_GECKOS|$KEYWORDS_SKINKS"
KEYWORDS_LIZARDS_ALL="$KEYWORDS_LIZARDS|$KEYWORDS_IGUANAS|$KEYWORDS_BEARDEDDRAGONS|$KEYWORDS_GECKOS|$KEYWORDS_SKINKS"

KEYWORDS_CROCODILES="Crocodile"
KEYWORDS_ALLIGATORS="Alligator|Caiman"
KEYWORDS_CROCODILES_EXCLUDE="Crocodile(| )Dundee|Crocodile(| )Hunter"

KEYWORDS_TUATARA="Tuatara"
KEYWORDS_TUATARA_ALL="$KEYWORDS_TUATARA"

KEYWORDS_REPTILES_EXCLUDE="$KEYWORDS_TURTLES_ALL|$KEYWORDS_SNAKES_ALL|$KEYWORDS_LIZARDS_ALL|$KEYWORDS_TUATARA_ALL|$KEYWORDS_ALLIGATORS|$KEYWORDS_CROCODILES"

KEYWORDS_REPTILES_ALL="$KEYWORDS_REPTILES|$KEYWORDS_TURTLES_ALL|$KEYWORDS_SNAKES_ALL|$KEYWORDS_CROCODILES|$KEYWORDS_ALLIGATORS|$KEYWORDS_LIZARDS_ALL|$KEYWORDS_TUATARA"

if [ "$1" == "" ];
then


  if [ "$DEBUG" == "yes" ];
  then
    printf "Starting Reptiles\n"
  fi

  REPTILES="$(egrep -i "$KEYWORDS_REPTILES" newpages.txt | egrep -iv "$KEYWORDS_REPTILES_EXCLUDE")"
  TURTLES="$(egrep -i "$KEYWORDS_TURTLES" newpages.txt | egrep -iv "$KEYWORDS_TURTLES_EXCLUDE")"
  SNAKES="$(egrep -i "$KEYWORDS_SNAKES" newpages.txt | egrep -iv "$KEYWORDS_SNAKES_EXCLUDE")"
  LIZARDS="$(egrep -i "$KEYWORDS_LIZARDS" newpages.txt | egrep -iv "$KEYWORDS_LIZARDS_EXCLUDE")"
  CROCODILES="$(egrep -i "$KEYWORDS_CROCODILES" newpages.txt | egrep -iv "$KEYWORDS_CROCODILES_EXCLUDE")"
  ALLIGATORS="$(egrep -i "$KEYWORDS_ALLIGATORS" newpages.txt)"
  TUATARA="$(egrep -i "$KEYWORDS_TUATARA" newpages.txt)"
  IGUANAS="$(egrep -i "$KEYWORDS_IGUANAS" newpages.txt)"
  BEARDEDDRAGON="$(egrep -i "$KEYWORDS_BEARDEDDRAGONS" newpages.txt)"
  GECKOS="$(egrep -i "$KEYWORDS_GECKOS" newpages.txt)"
  SKINKS="$(egrep -i "$KEYWORDS_SKINKS" newpages.txt)"
  PYTHONS="$(egrep -i "$KEYWORDS_PYTHONS" newpages.txt | egrep -iv "$KEYWORDS_PYTHONS_EXCLUDE")"
  RATTLESNAKES="$(egrep -i "$KEYWORDS_RATTLESNAKES" newpages.txt)"
  BOA="$(egrep -i "$KEYWORDS_BOA" newpages.txt | egrep -iv "$KEYWORDS_BOA_EXCLUDE")"
  ANACONDAS="$(egrep -i "$KEYWORDS_ANACONDAS" newpages.txt)"
  COBRAS="$(egrep -i "$KEYWORDS_COBRAS" newpages.txt | egrep -iv "$KEYWORDS_COBRAS_EXCLUDE")"

  if [ "$REPTILES" != "" ];
  then
    printf "%s" "$REPTILES" > Reptiles.txt
    export CATFILE="Reptiles.txt"
    export CATNAME="Reptiles"
    $CATEGORIZE
    rm Reptiles.txt
    unset REPTILES
  fi

  if [ "$TURTLES" != "" ];
  then
    printf "%s" "$TURTLES" > Turtles.txt
    export CATFILE="Turtles.txt"
    export CATNAME="Turtles"
    $CATEGORIZE
    rm Turtles.txt
    unset TURTLES
  fi

  if [ "$SNAKES" != "" ];
  then
    printf "%s" "$SNAKES" > Snakes.txt
    export CATFILE="Snakes.txt"
    export CATNAME="Snakes"
    $CATEGORIZE
    rm Snakes.txt
    unset SNAKES
  fi

  if [ "$LIZARDS" != "" ];
  then
    printf "%s" "$LIZARDS" > Lizards.txt
    export CATFILE="Lizards.txt"
    export CATNAME="Lizards"
    $CATEGORIZE
    rm Lizards.txt
    unset LIZARDS
  fi

  if [ "$CROCODILES" != "" ];
  then
    printf "%s" "$CROCODILES" > Crocodiles.txt 
    export CATFILE="Crocodiles.txt"
    export CATNAME="Crocodiles"
    $CATEGORIZE
  fi

  if [ "$ALLIGATORS" != "" ];
  then
    printf "%s" "$ALLIGATORS" > Alligators.txt
    export CATFILE="Alligators.txt"
    export CATNAME="Alligators"
    $CATEGORIZE
    rm Alligators.txt
    unset ALLIGATORS
  fi

  if [ "$TUATARA" != "" ];
  then
    printf "%s" "$TUATARA" > Tuatara.txt
    export CATFILE="Tuatara.txt"
    export CATNAME="Tuatara"
    $CATEGORIZE
    rm Tuatara.txt
    unset TUATARA
  fi

  if [ "$BEARDEDDRAGON" != "" ];
  then
    printf "%s" "$BEARDEDDRAGON" > Beardeddragons.txt
    export CATFILE="Beardeddragons.txt"
    export CATNAME="Bearded dragons"
    $CATEGORIZE
    rm Beardeddragons.txt
    unset BEARDEDDRAGON
  fi

  if [ "$IGUANAS" != "" ];
  then
    printf "%s" "$IGUANAS" > Iguanas.txt
    export CATFILE="Iguanas.txt"
    export CATNAME="Iguanas"
    $CATEGORIZE
    rm Iguanas.txt
    unset IGUANAS
  fi

  if [ "$GECKOS" != "" ];
  then
    printf "%s" "$GECKOS" > Geckos.txt
    export CATFILE="Geckos.txt"
    export CATNAME="Geckos"
    $CATEGORIZE
    rm Geckos.txt
    unset GECKOS
  fi

  if [ "$SKINKS" != "" ];
  then
    printf "%s" "$SKINKS" > Skinks.txt
    export CATFILE="Skinks.txt"
    export CATNAME="Skinks"
    $CATEGORIZE
    rm Skinks.txt
    unset SKINKS
  fi

  if [ "$PYTHONS" != "" ];
  then
    printf "%s" "$PYTHONS" > Pythons.txt
    export CATFILE="Pythons.txt"
    export CATNAME="Pythons"
    $CATEGORIZE
    rm Pythons.txt
    unset PYTHONS
  fi

  if [ "$RATTLESNAKES" != "" ];
  then
    printf "%s" "$RATTLESNAKES" > Rattlesnakes.txt
    export CATFILE="Rattlesnakes.txt"
    export CATNAME="Rattlesnakes"
    $CATEGORIZE
    rm Rattlesnakes.txt
    unset RATTLESNAKES
  fi

  if [ "$BOA" != "" ];
  then
    printf "%s" "$BOA" > Boa.txt
    export CATFILE="Boa.txt"
    export CATNAME="Boa"
    $CATEGORIZE
    rm Boa.txt
    unset BOA
  fi

  if [ "$ANACONDAS" != "" ];
  then
    printf "%s" "$ANACONDAS" > Anacondas.txt
    export CATFILE="Anacondas.txt"
    export CATNAME="Anacondas"
    $CATEGORIZE
    rm Anacondas.txt
    unset ANACONDAS
  fi

  if [ "$COBRAS" != "" ];
  then
    printf "%s" "$COBRAS" > Cobras.txt
    export CATFILE="Cobras.txt"
    export CATNAME="Cobras"
    $CATEGORIZE
    rm Cobras.txt
    unset COBRAS
  fi

  if [ "$DEBUG" == "yes" ];
  then
    printf "Finishing Reptiles\n"
  fi

fi