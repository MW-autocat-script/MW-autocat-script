#!/bin/bash

#Dogs keywords

KEYWORDS_DOGS_TOY="Affenpinscher|Australian(| )Silky(| )Terrier|Spaniel|Chihuahua|Chinese(| )Crested(| )Dog|Griffon(| )Bruxellois|Havanese|Italian(| )Greyhound|Japanese(| )Chin|King(| )Charles(| )Spaniel|Maltese|Miniature(| )Pinscher|Papillon|Pekingese|Pomeranian|\bPug(|s)\b|Shih(| )Tzu|Toy(| )Fox(| )Terrier|Toy(| )Manchester(| )Terrier|Yorkshire(| )Terrier|\bYorkie|Manchester(| )Terrier"
KEYWORDS_DOGS_WORKING="Malamute|\bAkita|Anatolian Shepherd|Shepherd dog|Sheep(| )dog|Bernese(| )Mountain(| )Dog|Black(| )Russian(| )Terrier|\bBoxer\b|mastiff|Cane(| )Corso|Doberman|Dogue(| )de(| )Bordeaux|German(| )Pinscher|Schnauzer|Great(| )Dane|Greater(| )Swiss(| )Mountain(| )Dog|Komondor|Kuvasz|Leonberger|Newfoundland (dog|puppy)|my Newfoundland|Portuguese( |)Water(| )Dog|Rottweiler|Samoyed|Siberian(| )Husky|(Saint|St(|\.))(| )Bernard"
KEYWORDS_DOGS_TERRIER="Airedale(| )Terrier"
KEYWORDS_DOGS="\bDog(|s|gy|gies)\b|Poodle|Terrier|$KEYWORDS_DOGS_TERRIER|$KEYWORDS_DOGS_TOY|$KEYWORDS_DOGS_WORKING"
KEYWORDS_DOGS_EXCLUDE="Maltese(| )Falcon|Snoop Dogg|Hot dog|Madd Dogg|prairie(| )dog"

#Goldfish keywords

KEYWORDS_GOLDFISH="gold(| )fish"
KEYWORDS_GOLDFISH_EXCLUDE="Gold(| )fish(| )cracker"

#Hamster keywords

KEYWORDS_HAMSTERS="ham(|p)ster"

#Keywords Gerbils

KEYWORDS_GERBILS="Gerbil"

#Keywords Cats 

KEYWORDS_CATS="\bCat(|s)\b|cat(| )(treat|food|toy)"
KEYWORDS_CATS_EXCLUDE="Tiger|Lion|Cheetah|Leopard|Puma|lynx|bob(| )cat|ocelot"


if [ "$1" == "" ]; #Normal operation
then

  debug_start "Pets"

  . ./catscripts/Science/Biology/Animals/Vertebrates/Reptiles/Reptiles.sh norun #Import variables from Reptiles
  . ./catscripts/Science/Biology/Animals/Vertebrates/Mammals/Placental_mammals/Rodents/Guinea_pigs/GuineaPigs.sh norun #KEYWORDS_GUINEAPIGS_ALL

  DOGS=$(egrep -i "$KEYWORDS_DOGS" "$NEWPAGES" | egrep -iv "$KEYWORDS_DOGS_EXCLUDE") 
  GOLDFISH=$(egrep -i "$KEYWORDS_GOLDFISH" "$NEWPAGES" | egrep -iv "$KEYWORDS_GOLDFISH_EXCLUDE") 
  HAMSTERS=$(egrep -i "$KEYWORDS_HAMSTERS" "$NEWPAGES") 
  GERBILS=$(egrep -i "$KEYWORDS_GERBILS" "$NEWPAGES") 
  CATS=$(egrep -i "$KEYWORDS_CATS" "$NEWPAGES" | egrep -iv "$KEYWORDS_CATS_EXCLUDE")

  categorize "DOGS" "Dogs"
  categorize "GOLDFISH" "Goldfish"
  categorize "HAMSTERS" "Hamsters"
  categorize "GERBILS" "Gerbils"
  categorize "GUINEAPIGS" "Guinea pigs"
  categorize "CATS" "Cats"

  debug_end "Pets"

fi