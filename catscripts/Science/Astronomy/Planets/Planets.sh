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

KEYWORDS_PLANET_EXCLUDE="$KEYWORDS_MERCURY|$KEYWORDS_VENUS|$KEYWORDS_EARTH|$KEYWORDS_MARS|$KEYWORDS_JUPITER|$KEYWORDS_SATURN|$KEYWORDS_URANUS|$KEYWORDS_NEPTUNE|Pluto|Eris|Dwarf planet|Captain Planet|Krypton|(Literacy|Litracy)(| )planet|Planet(| )of(| )the(| )Symbiotes|BlackPlanet|FilePlanet|deadly(| )planet|planet(| )turtle|Little(| )Big(| )Planet|Star(| )Wars|Star(| )Trek"


if [ "$1" == "" ];
then

  debug_start "Planets"

  MERCURY="$(egrep -i "$KEYWORDS_MERCURY" newpages.txt | egrep -iv "$KEYWORDS_MERCURY_EXCLUDE")"
  VENUS="$(egrep -i "$KEYWORDS_VENUS" newpages.txt | egrep -iv "$KEYWORDS_VENUS_EXCLUDE")"
  EARTH="$(egrep -i "$KEYWORDS_EARTH" newpages.txt | egrep -iv "$KEYWORDS_EARTH_EXCLUDE")"
  MARS="$(egrep -i "$KEYWORDS_MARS" newpages.txt | egrep -iv "$KEYWORDS_MARS_EXCLUDE")"
  JUPITER="$(egrep -i "$KEYWORDS_JUPITER" newpages.txt | egrep -iv "$KEYWORDS_JUPITER_EXCLUDE")"
  SATURN="$(egrep -i "$KEYWORDS_SATURN" newpages.txt | egrep -iv "$KEYWORDS_SATURN_EXCLUDE")"
  URANUS="$(egrep -i "$KEYWORDS_URANUS" newpages.txt | egrep -iv "$KEYWORDS_URANUS_EXCLUDE")"
  NEPTUNE="$(egrep -i "$KEYWORDS_NEPTUNE" newpages.txt | egrep -iv "$KEYWORDS_NEPTUNE_EXCLUDE")"
  PLANETS="$(egrep -i "$KEYWORDS_PLANET" newpages.txt | egrep -iv "$KEYWORDS_PLANET_EXCLUDE")"

  if [ "$MERCURY" != "" ];
  then
    printf "%s" "$MERCURY" > Mercury.txt
    export CATFILE="Mercury.txt"
    export CATNAME="Mercury"
    $CATEGORIZE
    rm Mercury.txt
    unset MERCURY
  fi

  if [ "$VENUS" != "" ];
  then
    printf "%s" "$VENUS" > Venus.txt
    export CATFILE="Venus.txt"
    export CATNAME="Venus"
    $CATEGORIZE
    rm Venus.txt
    unset VENUS
  fi

  if [ "$EARTH" != "" ];
  then
    printf "%s" "$EARTH" > Earth.txt
    export CATFILE="Earth.txt"
    export CATNAME="Earth"
    $CATEGORIZE
    rm Earth.txt
    unset EARTH
  fi

  if [ "$MARS" != "" ];
  then
    printf "%s" "$MARS" > Mars.txt
    export CATFILE="Mars.txt"
    export CATNAME="Mars"
    $CATEGORIZE
    rm Mars.txt
    unset MARS
  fi

  if [ "$JUPITER" != "" ];
  then
    printf "%s" "$JUPITER" > Jupiter.txt
    export CATFILE="Jupiter.txt"
    export CATNAME="Jupiter"
    $CATEGORIZE
    rm Jupiter.txt
    unset JUPITER
  fi

  if [ "$SATURN" != "" ];
  then
    printf "%s" "$SATURN" > Saturn.txt
    export CATFILE="Saturn.txt"
    export CATNAME="Saturn"
    $CATEGORIZE
    rm Saturn.txt
    unset SATURN
  fi

  if [ "$URANUS" != "" ];
  then
    printf "%s" "$URANUS" > Uranus.txt
    export CATFILE="Uranus.txt"
    export CATNAME="Uranus"
    $CATEGORIZE
    rm Uranus.txt
    unset URANUS
  fi

  if [ "$NEPTUNE" != "" ];
  then
    printf "%s" "$NEPTUNE" > Neptune.txt 
    export CATFILE="Neptune.txt"
    export CATNAME="Neptune"
    $CATEGORIZE
    rm Neptune.txt
    unset NEPTUNE
  fi

  if [ "$PLANETS" != "" ];
  then
    printf "%s" "$PLANETS" > Planets.txt
    export CATFILE="Planets.txt"
    export CATNAME="Planets"
    $CATEGORIZE
    rm Planets.txt
    unset PLANETS
  fi

  debug_end "Planets"

fi