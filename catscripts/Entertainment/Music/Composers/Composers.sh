#!/bin/bash
#Categorization script for composers of music

cat newpages.txt | egrep -i '\bBach\b' >> JohannSebatianBach.txt
cat newpages.txt | egrep -i 'Wolfgang|Anadeus|Mozart' | egrep -iv 'Rock Me|Puck' >> WolfgangAmadeusMozart.txt 
cat newpages.txt | egrep -i 'Beethoven' | egrep -iv 'Bernard|breed|dog' >> LudwigVanBeethoven.txt
cat newpages.txt | egrep -i 'Aaron Copland' >> AaronCopland.txt
cat newpages.txt | egrep -i 'Igor Stravinsky' >> IgorStravinsky.txt

BACH=`stat --print=%s JohannSebatianBach.txt`
MOZART=`stat --print=%s WolfgangAmadeusMozart.txt`
BEETHOVEN=`stat --print=%s LudwigVanBeethoven.txt`
COPLAND=`stat --print=%s AaronCopland.txt`
STRAVINSKY=`stat --print=%s IgorStravinsky.txt`

if [ $BACH -ne 0 ];
then
  export CATFILE="JohannSebatianBach.txt"
  export CATNAME="Johann Sebatian Bach"
  ./catscripts/Categorize.sh
fi

if [ $MOZART -ne 0 ];
then
  export CATFILE="WolfgangAmadeusMozart.txt"
  export CATNAME="Wolfgang Amadeus Mozart"
  ./catscripts/Categorize.sh
fi

if [ $BEETHOVEN -ne 0 ];
then
  export CATFILE="LudwigVanBeethoven.txt"
  export CATNAME="Ludwig van Beethoven"
  ./catscripts/Categorize.sh
fi

if [ $COPLAND -ne 0 ];
then
  export CATFILE="AaronCopland.txt"
  export CATNAME="Aaron Copland"
  ./catscripts/Categorize.sh
fi

if [ $STRAVINSKY -ne 0 ];
then
  export CATFILE="IgorStravinsky.txt"
  export CATNAME="Igor Stravinsky"
  ./catscripts/Categorize.sh
fi

rm JohannSebatianBach.txt
rm WolfgangAmadeusMozart.txt
rm LudwigVanBeethoven.txt
rm AaronCopland.txt
rm IgorStravinsky.txt
