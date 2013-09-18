#!/bin/bash

KEYWORDS_REPTILES="Reptile"
KEYWORDS_TURTLES="Turtle|Tortoise|Terrapin"
KEYWORDS_SNAKES="Snake"
KEYWORDS_PYTHONS="python"
KEYWORDS_RATTLESNAKES="Rattle(| )snake"
KEYWORDS_LIZARDS="Lizard"
KEYWORDS_IGUANAS="Iguana"
KEYWORDS_BEARDEDDRAGONS="Bearded(| )dragon"
KEYWORDS_GECKOS="Gecko"
KEYWORDS_SKINKS="Skink"
KEYWORDS_CROCODILES="Crocodile"
KEYWORDS_ALLIGATORS="Alligator|Caiman"
KEYWORDS_TUATARA="Tuatara"
KEYWORDS_TURTLES_EXCLUDE="tenneage|mutant|ninja|TMNT|Turtle(| )Knock"
KEYWORDS_SNAKES_EXCLUDE="Solid(| )Snake|$KEYWORDS_PYTHONS|Metal(| )Gear"
KEYWORDS_PYTHONS_EXCLUDE="in_python\b|program|script|computer(| )language|Metal(| )Gear|Monty(| )Python"
KEYWORDS_LIZARDS_EXCLUDE="$KEYWORDS_IGUANAS|$KEYWORDS_BEARDEDDRAGONS|$KEYWORDS_GECKOS|$KEYWORDS_SKINKS"
KEYWORDS_CROCODILES_EXCLUDE="Crocodile(| )Dundee|Crocodile(| )Hunter"
KEYWORDS_REPTILES_EXCLUDE="$KEYWORDS_TURTLES|$KEYWORDS_TURTLES_EXCLUDE|$KEYWORDS_SNAKES|$KEYWORDS_SNAKES_EXCLUDE|$KEYWORDS_LIZARDS|$KEYWORDS_LIZARDS_EXCLUDE|$KEYWORDS_TUATARA|$KEYWORDS_ALLIGATORS|$KEYWORDS_CROCODILES|$KEYWORDS_CROCODILES_EXCLUDE"

if [ "$1" == "" ];
then

  egrep -i "$KEYWORDS_REPTILES" newpages.txt | egrep -iv "$KEYWORDS_REPTILES_EXCLUDE" >> Reptiles.txt
  egrep -i "$KEYWORDS_TURTLES" newpages.txt | egrep -iv "$KEYWORDS_TURTLES_EXCLUDE" >> Turtles.txt
  egrep -i "$KEYWORDS_SNAKES" newpages.txt | egrep -iv "$KEYWORDS_SNAKES_EXCLUDE" >> Snakes.txt
  egrep -i "$KEYWORDS_LIZARDS" newpages.txt | egrep -iv "$KEYWORDS_LIZARDS_EXCLUDE" >> Lizards.txt
  egrep -i "$KEYWORDS_CROCODILES" newpages.txt | egrep -iv "$KEYWORDS_CROCODILES_EXCLUDE" >> Crocodiles.txt
  egrep -i "$KEYWORDS_ALLIGATORS" newpages.txt >> Alligators.txt
  egrep -i "$KEYWORDS_TUATARA" newpages.txt >> Tuatara.txt
  egrep -i "$KEYWORDS_IGUANAS" newpages.txt >> Iguanas.txt
  egrep -i "$KEYWORDS_BEARDEDDRAGONS" newpages.txt >> Beardeddragons.txt
  egrep -i "$KEYWORDS_GECKOS" newpages.txt >> Geckos.txt
  egrep -i "$KEYWORDS_SKINKS" newpages.txt >> Skinks.txt
  egrep -i "$KEYWORDS_PYTHONS" newpages.txt | egrep -iv "$KEYWORDS_PYTHONS_EXCLUDE" >> Pythons.txt
  egrep -i "$KEYWORDS_RATTLESNAKES" newpages.txt >> Rattlesnakes.txt

  REPTILES=`stat --print=%s Reptiles.txt`
  TURTLES=`stat --print=%s Turtles.txt`
  SNAKES=`stat --print=%s Snakes.txt`
  LIZARDS=`stat --print=%s Lizards.txt`
  CROCODILES=`stat --print=%s Crocodiles.txt`
  ALLIGATORS=`stat --print=%s Alligators.txt`
  TUATARA=`stat --print=%s Tuatara.txt`
  IGUANAS=`stat --print=%s Iguanas.txt`
  BEARDEDDRAGON=`stat --print=%s Beardeddragons.txt`
  GECKOS=`stat --print=%s Geckos.txt`
  SKINKS=`stat --print=%s Skinks.txt`
  PYTHONS=`stat --print=%s Pythons.txt`
  RATTLESNAKES=`stat --print=%s Rattlesnakes.txt`

  if [ $REPTILES -ne 0 ];
  then
    export CATFILE="Reptiles.txt"
    export CATNAME="Reptiles"
    $CATEGORIZE
  fi

  if [ $TURTLES -ne 0 ];
  then
    export CATFILE="Turtles.txt"
    export CATNAME="Turtles"
    $CATEGORIZE
  fi

  if [ $SNAKES -ne 0 ];
  then
    export CATFILE="Snakes.txt"
    export CATNAME="Snakes"
    $CATEGORIZE
  fi

  if [ $LIZARDS -ne 0 ];
  then
    export CATFILE="Lizards.txt"
    export CATNAME="Lizards"
    $CATEGORIZE
  fi

  if [ $CROCODILES -ne 0 ];
  then
    export CATFILE="Crocodiles.txt"
    export CATNAME="Crocodiles"
    $CATEGORIZE
  fi

  if [ $ALLIGATORS -ne 0 ];
  then
    export CATFILE="Alligators.txt"
    export CATNAME="Alligators"
    $CATEGORIZE
  fi

  if [ $TUATARA -ne 0 ];
  then
    export CATFILE="Tuatara.txt"
    export CATNAME="Tuatara"
    $CATEGORIZE
  fi

  if [ $BEARDEDDRAGON -ne 0 ];
  then
    export CATFILE="Beardeddragons.txt"
    export CATNAME="Bearded dragons"
    $CATEGORIZE
  fi

  if [ $IGUANAS -ne 0 ];
  then
    export CATFILE="Iguanas.txt"
    export CATNAME="Iguanas"
    $CATEGORIZE
  fi

  if [ $GECKOS -ne 0 ];
  then
    export CATFILE="Geckos.txt"
    export CATNAME="Geckos"
    $CATEGORIZE
  fi

  if [ $SKINKS -ne 0 ];
  then
    export CATFILE="Skinks.txt"
    export CATNAME="Skinks"
    $CATEGORIZE
  fi

  if [ $PYTHONS -ne 0 ];
  then
    export CATFILE="Pythons.txt"
    export CATNAME="Pythons"
    $CATEGORIZE
  fi

  if [ $RATTLESNAKES -ne 0 ];
  then
    export CATFILE="Rattlesnakes.txt"
    export CATNAME="Rattlesnakes"
    $CATEGORIZE
  fi

  rm Reptiles.txt
  rm Turtles.txt
  rm Alligators.txt
  rm Crocodiles.txt
  rm Lizards.txt
  rm Snakes.txt
  rm Tuatara.txt
  rm Beardeddragons.txt
  rm Iguanas.txt
  rm Geckos.txt
  rm Skinks.txt
  rm Pythons.txt
  rm Rattlesnakes.txt

fi