#!/bin/bash

KEYWORDS_PLANET="Planet"

KEYWORDS_MERCURY="Mercury"
KEYWORDS_MERCURY_EXCLUDE="car|motor|god|deity|rome|roman|olympus|greece|battery|cell|element|compound|magnetic|thermometer|toxic|atomic|proton|neutron|electron|metal|in water|molecule|pollutant|pollute|freddy|freddie|flower|myth|story|legend|M-series|Mercury(| )(Cyclone|Monarch|Marquis|Cougar|Milan|Eight|Monterey|Montclair|Medlaist|Custom|Turnpike Cruiser|Marauder|Brougham|Sable|Cougar|LN7|Capri|Voyager|Montego|Commuter|Colony Park|Mountaineer|Meteor|Mystique|Topaz|Zephyr|Tracer|Villager|Lynx|Comet|bobcat)|Star(| )Wars|Star(| )Trek"

KEYWORDS_VENUS="Venus(|ian)\b"
KEYWORDS_VENUS_EXCLUDE="god|deity|rome|roman|olympus|greece|myth|story|fly(| )trap|Venus, Florida|Star Wars|Star Trek|Venus(| )Williams"

KEYWORDS_EARTH="\bEarth(|s)\b"
KEYWORDS_EARTH_EXCLUDE="earthquake|earth-shaking|earth-moving|earth-mover|earth-two|Fallen Earth|Earth( |-)(982|928|616)|X-Men|Kitty Pryde|Earth(| )altar|Earth(| )rune|Earth(| )talisman|Earth(| )tiara|Earth(| )staff|Rune(| )Scape|Adam Warlock|Enchantress|Protector(| )of(| )Earth|Google(| )Earth|Silverfall|Earth wire|Mass(| )Effect|Star(| )Wars|Star(| )Trek|Earth(| )rune"

KEYWORDS_MARS="Mars\b"
KEYWORDS_MARS_EXCLUDE="god|deity|rome|roman|olympus|greece|myth|story|Star(| )Wars|Star(| )Trek|Bruno(| )Mars|Veronica(| )Mars"

KEYWORDS_JUPITER="Jupiter"
KEYWORDS_JUPITER_EXCLUDE="god|deity|rome|roman|olympus|greece|myth|story|Star(| )Wars|Star(| )Trek"

KEYWORDS_SATURN="Saturn"
KEYWORDS_SATURN_EXCLUDE="god|deity|rome|roman|olympus|greece|myth|story|sega|[0-9]{1,} Saturn|Saturn(| )SL1|Saturn(| )Aura|Saturn(| )Astra|Saturn(| )Outlook|Saturn(| )Sky|Saturn(| )Relay|Saturn(| )Ion|Saturn(| )Vue|S-series|L-series|EV1|LX|Star(| )Wars|Star(| )Trek"

KEYWORDS_URANUS="Uranus"
KEYWORDS_URANUS_EXCLUDE="god|deity|rome|roman|olympus|greece|myth|story|Star(| )Wars|Star(| )Trek"

KEYWORDS_NEPTUNE="Neptune"
KEYWORDS_NEPTUNE_EXCLUDE="god|deity|rome|roman|olympus|greece|myth|story|Star(| )Wars|Star(| )Trek"

KEYWORDS_PLANET_EXCLUDE="$KEYWORDS_MERCURY|$KEYWORDS_VENUS|$KEYWORDS_EARTH|$KEYWORDS_MARS|$KEYWORDS_JUPITER|$KEYWORDS_SATURN|$KEYWORDS_URANUS|$KEYWORDS_NEPTUNE|Pluto|Eris|Dwarf planet|Captain Planet|Krypton|(Literacy|Litracy) planet|Planet of the Symbiotes|BlackPlanet|FilePlanet|deadly planet|planet turtle|Little(| )Big(| )Planet|Star(| )Wars|Star(| )Trek"


egrep -i "$KEYWORDS_PLANET" newpages.txt | egrep -iv "$KEYWORDS_PLANET_EXCLUDE" > Planets.txt
egrep -i "$KEYWORDS_MERCURY" newpages.txt | egrep -iv "$KEYWORDS_MERCURY_EXCLUDE" >> Mercury.txt
egrep -i "$KEYWORDS_VENUS" newpages.txt | egrep -iv "$KEYWORDS_VENUS_EXCLUDE" >> Venus.txt
egrep -i "$KEYWORDS_EARTH" newpages.txt | egrep -iv "$KEYWORDS_EARTH_EXCLUDE" >> Earth.txt
egrep -i "$KEYWORDS_MARS" newpages.txt | egrep -iv "$KEYWORDS_MARS_EXCLUDE" >> Mars.txt
egrep -i "$KEYWORDS_JUPITER" newpages.txt | egrep -iv "$KEYWORDS_JUPITER_EXCLUDE" >> Jupiter.txt
egrep -i "$KEYWORDS_SATURN" newpages.txt | egrep -iv "$KEYWORDS_SATURN_EXCLUDE" >> Saturn.txt
egrep -i "$KEYWORDS_URANUS" newpages.txt | egrep -iv "$KEYWORDS_URANUS_EXCLUDE" >> Uranus.txt
egrep -i "$KEYWORDS_NEPTUNE" newpages.txt | egrep -iv "$KEYWORDS_NEPTUNE_EXCLUDE" >> Neptune.txt

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
  $CATEGORIZE
fi

if [ $Venus -ne 0 ];
then
  export CATFILE="Venus.txt"
  export CATNAME="Venus"
  $CATEGORIZE
fi

if [ $Earth -ne 0 ];
then
  export CATFILE="Earth.txt"
  export CATNAME="Earth"
  $CATEGORIZE
fi

if [ $Mars -ne 0 ];
then
  export CATFILE="Mars.txt"
  export CATNAME="Mars"
  $CATEGORIZE
fi

if [ $Jupiter -ne 0 ];
then
  export CATFILE="Jupiter.txt"
  export CATNAME="Jupiter"
  $CATEGORIZE
fi

if [ $Saturn -ne 0 ];
then
  export CATFILE="Saturn.txt"
  export CATNAME="Saturn"
  $CATEGORIZE
fi

if [ $Uranus -ne 0 ];
then
  export CATFILE="Uranus.txt"
  export CATNAME="Uranus"
  $CATEGORIZE
fi

if [ $Neptune -ne 0 ];
then
  export CATFILE="Neptune.txt"
  export CATNAME="Neptune"
  $CATEGORIZE
fi

if [ $PLANETS -ne 0 ];
then
  export CATFILE="Planets.txt"
  export CATNAME="Planets"
  $CATEGORIZE
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