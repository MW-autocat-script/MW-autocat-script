#!/bin/bash

cat newpages.txt | egrep -i '\bActinium' >>  Actinium.txt
cat newpages.txt | egrep -i 'Thorium' | egrep -iv 'World of Warcraft' >> Thorium.txt
cat newpages.txt | egrep -i 'Protactinium' >>  Protactinium.txt
cat newpages.txt | egrep -i 'Uranium' >> Uranium.txt
cat newpages.txt | egrep -i 'Neptunium' >> Neptunium.txt
cat newpages.txt | egrep -i 'Plutonium' | egrep -iv 'The Sims|Duke Nukem' >> Plutonium.txt
cat newpages.txt | egrep -i 'Americium' >> Americium.txt
cat newpages.txt | egrep -i 'Curium' >> Curium.txt
cat newpages.txt | egrep -i '\bBerkelium' >> Berkelium.txt
cat newpages.txt | egrep -i 'Californium' >> Californium.txt
cat newpages.txt | egrep -i 'Einsteinium' >> Einsteinium.txt
cat newpages.txt | egrep -i '\bFermium' >> Fermium.txt
cat newpages.txt | egrep -i 'Mendelevium' >> Mendelevium.txt
cat newpages.txt | egrep -i 'Nobelium' >> Nobelium.txt
cat newpages.txt | egrep -i 'Lawrencium' >> Lawrencium.txt

ACTINIUM=`stat --print=%s Actinium.txt`
THORIUM=`stat --print=%s Thorium.txt`
PRASEODYMIUM=`stat --print=%s Protactinium.txt`
URANIUM=`stat --print=%s Uranium.txt`
NEPTUNIUM=`stat --print=%s Neptunium.txt`
PLUTONIUM=`stat --print=%s Plutonium.txt`
AMERCIUM=`stat --print=%s Americium.txt`
CURIUM=`stat --print=%s Curium.txt`
BERKELIUM=`stat --print=%s Berkelium.txt`
CALIFORNIUM=`stat --print=%s Californium.txt`
EINSTEINIUM=`stat --print=%s Einsteinium.txt`
FERMIUM=`stat --print=%s Fermium.txt`
MENDELEVIUM=`stat --print=%s Mendelevium.txt`
NOBELIUM=`stat --print=%s Nobelium.txt`
LAWRENCIUM=`stat --print=%s Lawrencium.txt`

if [ $ACTINIUM -ne 0 ] ;
then
   export CATFILE="Actinium.txt"
   export CATNAME="Actinium"
   ./catscripts/Categorize.sh
fi

if [ $THORIUM -ne 0 ] ;
then
   export CATFILE="Thorium.txt"
   export CATNAME="Thorium"
   ./catscripts/Categorize.sh
fi

if [ $PRASEODYMIUM -ne 0 ] ;
then
   export CATFILE="Protactinium.txt"
   export CATNAME="Protactinium"
   ./catscripts/Categorize.sh
fi

if [ $URANIUM -ne 0 ] ;
then
   export CATFILE="Uranium.txt"
   export CATNAME="Uranium"
   ./catscripts/Categorize.sh
fi

if [ $NEPTUNIUM -ne 0 ] ;
then
   export CATFILE="Neptunium.txt"
   export CATNAME="Neptunium"
   ./catscripts/Categorize.sh
fi

if [ $PLUTONIUM -ne 0 ] ;
then
   export CATFILE="Plutonium.txt"
   export CATNAME="Plutonium"
   ./catscripts/Categorize.sh
fi

if [ $AMERCIUM -ne 0 ] ;
then
   export CATFILE="Americium.txt"
   export CATNAME="Americium"
   ./catscripts/Categorize.sh
fi

if [ $CURIUM -ne 0 ] ;
then
   export CATFILE="Curium.txt"
   export CATNAME="Curium"
   ./catscripts/Categorize.sh
fi

if [ $BERKELIUM -ne 0 ] ;
then
   export CATFILE="Berkelium.txt"
   export CATNAME="Berkelium"
   ./catscripts/Categorize.sh
fi

if [ $CALIFORNIUM -ne 0 ] ;
then
   export CATFILE="Californium.txt"
   export CATNAME="Californium"
   ./catscripts/Categorize.sh
fi

if [ $EINSTEINIUM -ne 0 ] ;
then
   export CATFILE="Einsteinium.txt"
   export CATNAME="Einsteinium"
   ./catscripts/Categorize.sh
fi

if [ $FERMIUM -ne 0 ] ;
then
   export CATFILE="Fermium.txt"
   export CATNAME="Fermium"
   ./catscripts/Categorize.sh
fi

if [ $MENDELEVIUM -ne 0 ] ;
then
   export CATFILE="Mendelevium.txt"
   export CATNAME="Mendelevium"
   ./catscripts/Categorize.sh
fi

if [ $NOBELIUM -ne 0 ] ;
then
   export CATFILE="Nobelium.txt"
   export CATNAME="Nobelium"
   ./catscripts/Categorize.sh
fi

if [ $LAWRENCIUM -ne 0 ] ;
then
   export CATFILE="Lawrencium.txt"
   export CATNAME="Lawrencium"
   ./catscripts/Categorize.sh
fi

rm Actinium.txt
rm Thorium.txt
rm Protactinium.txt
rm Uranium.txt
rm Neptunium.txt
rm Plutonium.txt
rm Americium.txt
rm Curium.txt
rm Berkelium.txt
rm Californium.txt
rm Einsteinium.txt
rm Fermium.txt
rm Mendelevium.txt
rm Nobelium.txt
rm Lawrencium.txt