#!/bin/bash
#Categorization script for composers of music

egrep -i '\bBach\b' newpages.txt >> Bach.txt
egrep -i 'Wolfgang|Amadeus|Mozart' newpages.txt | egrep -iv 'Rock Me|Puck' >> WolfgangAmadeusMozart.txt 
egrep -i 'Beethoven'  newpages.txt | egrep -iv 'Bernard|breed|dog' >> LudwigVanBeethoven.txt
egrep -i 'Aaron Copland' newpages.txt >> AaronCopland.txt
egrep -i 'Igor Stravinsky' newpages.txt >> IgorStravinsky.txt

BACH=$(stat --print=%s Bach.txt)
MOZART=$(stat --print=%s WolfgangAmadeusMozart.txt)
BEETHOVEN=$(stat --print=%s LudwigVanBeethoven.txt)
COPLAND=$(stat --print=%s AaronCopland.txt)
STRAVINSKY=$(stat --print=%s IgorStravinsky.txt)

if [ $BACH -ne 0 ];
then
  export CATFILE="Bach.txt"
  export CATNAME="Johann Sebastian Bach"
  $CATEGORIZE
fi

if [ $MOZART -ne 0 ];
then
  export CATFILE="WolfgangAmadeusMozart.txt"
  export CATNAME="Wolfgang Amadeus Mozart"
  $CATEGORIZE
fi

if [ $BEETHOVEN -ne 0 ];
then
  export CATFILE="LudwigVanBeethoven.txt"
  export CATNAME="Ludwig van Beethoven"
  $CATEGORIZE
fi

if [ $COPLAND -ne 0 ];
then
  export CATFILE="AaronCopland.txt"
  export CATNAME="Aaron Copland"
  $CATEGORIZE
fi

if [ $STRAVINSKY -ne 0 ];
then
  export CATFILE="IgorStravinsky.txt"
  export CATNAME="Igor Stravinsky"
  $CATEGORIZE
fi

rm Bach.txt
rm WolfgangAmadeusMozart.txt
rm LudwigVanBeethoven.txt
rm AaronCopland.txt
rm IgorStravinsky.txt
