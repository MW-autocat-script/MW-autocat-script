#!/bin/bash

#Dogs keywords

KEYWORDS_DOGS_TOY="Affenpinscher|Australian(| )Silky(| )Terrier|Spaniel|Chihuahua|Chinese(| )Crested(| )Dog|Griffon(| )Bruxellois|Havanese|Italian(| )Greyhound|Japanese(| )Chin|King(| )Charles(| )Spaniel|Maltese|Miniature(| )Pinscher|Papillon|Pekingese|Pomeranian|\bPug(|s)\b|Shih(| )Tzu|Toy(| )Fox(| )Terrier|Toy(| )Manchester(| )Terrier|Yorkshire(| )Terrier|\bYorkie|Manchester(| )Terrier"
KEYWORDS_DOGS_WORKING="Malamute|\bAkita|Anatolian Shepherd|Shepherd dog|Sheep(| )dog|Bernese(| )Mountain(| )Dog|Black(| )Russian(| )Terrier|\bBoxer\b|mastiff|Cane(| )Corso|Doberman|Dogue(| )de(| )Bordeaux|German(| )Pinscher|Schnauzer|Great(| )Dane|Greater(| )Swiss(| )Mountain(| )Dog|Komondor|Kuvasz|Leonberger|Newfoundland (dog|puppy)|my Newfoundland|Portuguese( |)Water(| )Dog|Rottweiler|Samoyed|Siberian(| )Husky|(Saint|St(|\.))(| )Bernard"
KEYWORDS_DOGS_TERRIER="Airedale(| )Terrier"
KEYWORDS_DOGS="\bDog(|s)|Poodle|Terrier|$KEYWORDS_DOGS_TERRIER|$KEYWORDS_DOGS_TOY|$KEYWORDS_DOGS_WORKING"
KEYWORDS_DOGS_EXCLUDE="Maltese(| )Falcon|Snoop Dogg|Hot dog"

#Goldfish keywords

KEYWORDS_GOLDFISH="gold(| )fish"
KEYWORDS_GOLDFISH_EXCLUDE="Gold(| )fish(| )cracker"

#Search dogs

egrep -i "$KEYWORDS_DOGS" newpages.txt | egrep -iv "$KEYWORDS_DOGS_EXCLUDE" >> Dogs.txt

# Search goldfish

egrep -i "$KEYWORDS_GOLDFISH" newpages.txt | egrep -iv "$KEYWORDS_GOLDFISH_EXCLUDE" >> Goldfish.txt

#Stat Dogs

DOGS=`stat --print=%s Dogs.txt`

#Stat Goldfish

GOLDFISH=`stat --print=%s Goldfish.txt`

#Categorize dogs

if [ $DOGS -ne 0 ];
then
  export CATFILE="Dogs.txt"
  export CATNAME="Dogs"
  $CATEGORIZE
fi

#Categorize goldfish

if [ $GOLDFISH -ne 0 ];
then
  export CATFILE="Goldfish.txt"
  export CATNAME="Goldfish"
  $CATEGORIZE
fi

rm Dogs.txt #cleanup dogs
rm Goldfish.txt #Cleanup goldfish

