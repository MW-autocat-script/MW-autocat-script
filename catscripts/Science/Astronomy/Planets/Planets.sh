#!/bin/bash

egrep -i 'Planet' newpages.txt | egrep -iv 'Mercury|Venus|Earth|Mars|Jupiter|Saturn|Uranus|Neptune|Pluto|Dwarf planet|Captain Planet|Krypton|(Literacy|Litracy) planet|Planet of the Symbiotes|BlackPlanet|deadly planet|planet turtle' > Planets.txt
egrep -i 'Mercury' newpages.txt | egrep -iv 'god|deity|rome|roman|olympus|greece|battery|cell|element|compound|magnetic|thermometer|toxic|atomic|proton|neutron|electron|metal|in water|molecule|pollutant|pollute|freddy|freddie|flower|myth|story|legend|M-series|bobcat|Mercury Comet|Lynx|Tracer|Zephyr|Topaz|Mystique|Mercury Meteor|Mercury Cyclone|Monarch|Marquis|Cougar|Milan|Mercury Eight|Monterey|Montclair|Medlaist|Mercury Custom|Turnpike Cruiser|Marauder|Brougham|Sable|Cougar|LN7|Capri|Mercury Voyager|Commuter|Colony Park|Mountaineer' >> Mercury.txt
egrep -i 'Venus' newpages.txt | egrep -iv 'god|deity|rome|roman|olympus|greece|myth|story|fly(| )trap' >> Venus.txt
egrep -i '\bEarth\b' newpages.txt | egrep -iv 'earthquake|earth-shaking|earth-moving|earth-mover|earth-two|Fallen Earth|Earth( |-)(982|928|616)|X-Men|Kitty Pryde|Adam Warlock|Enchantress' >> Earth.txt
egrep -i 'Mars\b' newpages.txt | egrep -iv 'god|deity|rome|roman|olympus|greece|myth|story' >> Mars.txt
egrep -i 'Jupiter' newpages.txt | egrep -iv 'god|deity|rome|roman|olympus|greece|myth|story'>> Jupiter.txt
egrep -i 'Saturn' newpages.txt | egrep -iv 'god|deity|rome|roman|olympus|greece|myth|story|sega|[0-9]{1,} Saturn|Saturn Aura|Saturn Astra|Saturn Outlook|Saturn Sky|Saturn Relay|Saturn Ion|Saturn Vue|S-series|L-series|EV1|LX'>> Saturn.txt
egrep -i 'Uranus' newpages.txt | egrep -iv 'god|deity|rome|roman|olympus|greece|myth|story'>> Uranus.txt
egrep -i 'Neptune' newpages.txt | egrep -iv 'god|deity|rome|roman|olympus|greece|myth|story'>> Neptune.txt

Mercury=`stat --print=%s Mercury.txt`
Venus=`stat --print=%s Venus.txt`
Earth=`stat --print=%s Earth.txt`
Mars=`stat --print=%s Mars.txt`
Jupiter=`stat --print=%s Jupiter.txt`
Saturn=`stat --print=%s Saturn.txt`
Uranus=`stat --print=%s Uranus.txt`
Neptune=`stat --print=%s Neptune.txt`
PLANETS=`stat --print=%s Planets.txt`

if [ $Mercury -ne 0 ];
then
	export CATFILE="Mercury.txt"
	export CATNAME="Mercury"
	./catscripts/Categorize.sh
fi

if [ $Venus -ne 0 ];
then
	export CATFILE="Venus.txt"
	export CATNAME="Venus"
	./catscripts/Categorize.sh
fi

if [ $Earth -ne 0 ];
then
	export CATFILE="Earth.txt"
	export CATNAME="Earth"
	./catscripts/Categorize.sh
fi

if [ $Mars -ne 0 ];
then
	export CATFILE="Mars.txt"
	export CATNAME="Mars"
	./catscripts/Categorize.sh
fi

if [ $Jupiter -ne 0 ];
then
	export CATFILE="Jupiter.txt"
	export CATNAME="Jupiter"
	./catscripts/Categorize.sh
fi

if [ $Saturn -ne 0 ];
then
	export CATFILE="Saturn.txt"
	export CATNAME="Saturn"
	./catscripts/Categorize.sh
fi

if [ $Uranus -ne 0 ];
then
	export CATFILE="Uranus.txt"
	export CATNAME="Uranus"
	./catscripts/Categorize.sh
fi

if [ $Neptune -ne 0 ];
then
	export CATFILE="Neptune.txt"
	export CATNAME="Neptune"
	./catscripts/Categorize.sh
fi

if [ $PLANETS -ne 0 ];
then
  export CATFILE="Planets.txt"
  export CATNAME="Planets"
  ./catscripts/Categorize.sh
fi

rm Mercury.txt
rm Venus.txt
rm Earth.txt
rm Mars.txt
rm Jupiter.txt
rm Saturn.txt
rm Uranus.txt
rm Neptune.txt
rm Planets.txt

