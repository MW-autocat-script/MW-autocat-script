#!/bin/bash

KEYWORDS_REPTILES="Reptile"
KEYWORDS_TURTLES="Turtle|Tortoise|Terrapin"
KEYWORDS_SNAKES="Snake"
KEYWORDS_LIZARDS="Lizard"
KEYWORDS_CROCODILES="Crocodile"
KEYWORDS_ALLIGATORS="Alligator|Caiman"
KEYWORDS_TUATARA="Tuatara"
KEYWORDS_TURTLES_EXCLUDE="tenneage|mutant|ninja|TMNT"
KEYWORDS_SNAKES_EXCLUDE="Solid(| )Snake"
KEYWORDS_CROCODILES_EXCLUDE="Crocodile(| )Dundee|Crocodile(| )Hunter"
KEYWORDS_REPTILES_EXCLUDE="$KEYWORDS_TURTLES|$KEYWORDS_SNAKES|$KEYWORDS_LIZARDS|$KEYWORDS_TUATARA|$KEYWORDS_ALLIGATORS|$KEYWORDS_CROCODILES"

if [ "$1" == "" ];
then

  egrep -i "$KEYWORDS_REPTILES" newpages.txt | egrep -iv "$KEYWORDS_REPTILES_EXCLUDE" >> Reptiles.txt
  egrep -i "$KEYWORDS_TURTLES" newpages.txt | egrep -iv "$KEYWORDS_TURTLES_EXCLUDE" >> Turtles.txt
  egrep -i "$KEYWORDS_SNAKES" newpages.txt | egrep -iv "$KEYWORDS_SNAKES_EXCLUDE" >> Snakes.txt
  egrep -i "$KEYWORDS_LIZARDS" newpages.txt >> Lizards.txt
  egrep -i "$KEYWORDS_CROCODILES" newpages.txt | egrep -iv "$KEYWORDS_CROCODILES_EXCLUDE" >> Crocodiles.txt
  egrep -i "$KEYWORDS_ALLIGATORS" newpages.txt >> Alligators.txt
  egrep -i "$KEYWORDS_TUATARA" newpages.txt >> Tuatara.txt

  REPTILES=`stat --print=%s Reptiles.txt`
  TURTLES=`stat --print=%s Turtles.txt`
  SNAKES=`stat --print=%s Snakes.txt`
  LIZARDS=`stat --print=%s Lizards.txt`
  CROCODILES=`stat --print=%s Crocodiles.txt`
  ALLIGATORS=`stat --print=%s Alligators.txt`
  TUATARA=`stat --print=%s Tuatara.txt`

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

  rm Reptiles.txt
  rm Turtles.txt
  rm Alligators.txt
  rm Crocodiles.txt
  rm Lizards.txt
  rm Snakes.txt
  rm Tuatara.txt

fi