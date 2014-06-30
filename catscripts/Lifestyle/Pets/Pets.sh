#!/bin/bash

#Dogs keywords

KEYWORDS_DOGS_TOY="Affenpinscher|Australian(| )Silky(| )Terrier|Spaniel|Chihuahua|Chinese(| )Crested(| )Dog|Griffon(| )Bruxellois|Havanese|Italian(| )Greyhound|Japanese(| )Chin|King(| )Charles(| )Spaniel|Maltese|Miniature(| )Pinscher|Papillon|Pekingese|Pomeranian|\bPug(|s)\b|Shih(| )Tzu|Toy(| )Fox(| )Terrier|Toy(| )Manchester(| )Terrier|Yorkshire(| )Terrier|\bYorkie|Manchester(| )Terrier"
KEYWORDS_DOGS_WORKING="Malamute|\bAkita|Anatolian Shepherd|Shepherd dog|Sheep(| )dog|Bernese(| )Mountain(| )Dog|Black(| )Russian(| )Terrier|\bBoxer\b|mastiff|Cane(| )Corso|Doberman|Dogue(| )de(| )Bordeaux|German(| )Pinscher|Schnauzer|Great(| )Dane|Greater(| )Swiss(| )Mountain(| )Dog|Komondor|Kuvasz|Leonberger|Newfoundland (dog|puppy)|my Newfoundland|Portuguese( |)Water(| )Dog|Rottweiler|Samoyed|Siberian(| )Husky|(Saint|St(|\.))(| )Bernard"
KEYWORDS_DOGS_TERRIER="Airedale(| )Terrier"
KEYWORDS_DOGS="\bDog(|s)|Poodle|Terrier|$KEYWORDS_DOGS_TERRIER|$KEYWORDS_DOGS_TOY|$KEYWORDS_DOGS_WORKING"
KEYWORDS_DOGS_EXCLUDE="Maltese(| )Falcon|Snoop Dogg|Hot dog|Madd Dogg|prairie(| )dog"

#Goldfish keywords

KEYWORDS_GOLDFISH="gold(| )fish"
KEYWORDS_GOLDFISH_EXCLUDE="Gold(| )fish(| )cracker"

#Hamster keywords

KEYWORDS_HAMSTERS="ham(|p)ster"

#Keywords Gerbils

KEYWORDS_GERBILS="Gerbil"

#Keywords Guinea pigs

KEYWORDS_GUINEA_PIGS="Guinea(| )pig"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pets"

  . ./catscripts/Science/Biology/Animals/Vertebrates/Reptiles/Reptiles.sh norun #Import variables from Reptiles

  DOGS=$(egrep -i "$KEYWORDS_DOGS" newpages.txt | egrep -iv "$KEYWORDS_DOGS_EXCLUDE") 
  GOLDFISH=$(egrep -i "$KEYWORDS_GOLDFISH" newpages.txt | egrep -iv "$KEYWORDS_GOLDFISH_EXCLUDE") 
  HAMSTERS=$(egrep -i "$KEYWORDS_HAMSTERS" newpages.txt) 
  GERBILS=$(egrep -i "$KEYWORDS_GERBILS" newpages.txt) 
  GUINEAPIGS=$(egrep -i "$KEYWORDS_GUINEA_PIGS" newpages.txt) 

  #Categorize dogs

  if [ "$DOGS" != "" ];
  then
    printf "%s" "$DOGS" > Dogs.txt
    export CATFILE="Dogs.txt"
    export CATNAME="Dogs"
    $CATEGORIZE
    rm Dogs.txt
    unset DOGS
  fi

  #Categorize goldfish

  if [ "$GOLDFISH" != "" ];
  then
    printf "%s" "$GOLDFISH" > Goldfish.txt
    export CATFILE="Goldfish.txt"
    export CATNAME="Goldfish"
    $CATEGORIZE
    rm Goldfish.txt
    unset GOLDFISH
  fi

  #Categorize hamsters

  if [ "$HAMSTERS" != "" ];
  then
    printf "%s" "$HAMSTERS" > Hamsters.txt
    export CATFILE="Hamsters.txt"
    export CATNAME="Hamsters"
    $CATEGORIZE
    rm Hamsters.txt
    unset HAMSTERS
  fi

  #Categorize gerbils

  if [ "$GERBILS" != "" ];
  then
    printf "%s" "$GERBILS" > Gerbils.txt
    export CATFILE="Gerbils.txt"
    export CATNAME="Gerbils"
    $CATEGORIZE
    rm Gerbils.txt
    unset GERBILS
  fi

  #Categorize Guinea pigs

  if [ "$GUINEAPIGS" != "" ];
  then
    printf "%s" "$GUINEAPIGS" > GuineaPigs.txt
    export CATFILE="GuineaPigs.txt"
    export CATNAME="Guinea pigs"
    $CATEGORIZE
    rm GuineaPigs.txt
    unset GUINEAPIGS
  fi

  debug_end "Pets"

fi