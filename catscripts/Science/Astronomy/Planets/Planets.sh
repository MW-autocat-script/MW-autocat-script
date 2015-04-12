#!/bin/bash

KEYWORDS_PLANET="Planet"

KEYWORDS_MERCURY="Mercury"
KEYWORDS_MERCURY_EXCLUDE="car|motor|god|deity|rome|roman|olympus|greece|battery|cell|element|compound|magnetic|thermometer|toxic|atomic|proton|neutron|electron|metal|in water|molecule|pollutant|pollute|freddy|freddie|flower|myth|story|legend|M-series|Mercury(| )(Cyclone|Monarch|Marquis|Cougar|Milan|Eight|Monterey|Montclair|Medlaist|Custom|Turnpike Cruiser|Marauder|Brougham|Sable|Cougar|LN7|Capri|Voyager|Montego|Commuter|Colony Park|Mountaineer|Meteor|Mystique|Topaz|Zephyr|Tracer|Villager|Lynx|Comet|bobcat)|Star(| )Wars|Star(| )Trek"

KEYWORDS_VENUS="Venus(|ian)\b"
KEYWORDS_VENUS_EXCLUDE="god|deity|rome|roman|olympus|greece|myth|story|fly(| )trap|Venus, Florida|Star Wars|Star Trek|Venus(| )Williams"

KEYWORDS_EARTH="\bEarth(|s)\b"
KEYWORDS_EARTH_EXCLUDE="earthquake|earth-shaking|earth-moving|earth-mover|earth-two|Fallen Earth|Earth( |-)(982|928|616)|X-Men|Kitty Pryde|Earth(| )altar|Earth(| )rune|Earth(| )talisman|Earth(| )tiara|Earth(| )staff|Rune(| )Scape|Adam Warlock|Enchantress|Protector(| )of(| )Earth|Google(| )Earth|Silverfall|Earth wire|Mass(| )Effect|Star(| )Wars|Star(| )Trek|Earth(| )rune"

KEYWORDS_MARS="Mars\b"
KEYWORDS_MARS_EXCLUDE="god|deity|rome|roman|olympus|greece|myth|story|Star(| )Wars|Star(| )Trek|Bruno(| )Mars|Veronica(| )Mars|Mars(| )bar"

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

  MERCURY=$(egrep -i "$KEYWORDS_MERCURY" "$NEWPAGES" | egrep -iv "$KEYWORDS_MERCURY_EXCLUDE")
  VENUS=$(egrep -i "$KEYWORDS_VENUS" "$NEWPAGES" | egrep -iv "$KEYWORDS_VENUS_EXCLUDE")
  EARTH=$(egrep -i "$KEYWORDS_EARTH" "$NEWPAGES" | egrep -iv "$KEYWORDS_EARTH_EXCLUDE")
  MARS=$(egrep -i "$KEYWORDS_MARS" "$NEWPAGES" | egrep -iv "$KEYWORDS_MARS_EXCLUDE")
  JUPITER=$(egrep -i "$KEYWORDS_JUPITER" "$NEWPAGES" | egrep -iv "$KEYWORDS_JUPITER_EXCLUDE")
  SATURN=$(egrep -i "$KEYWORDS_SATURN" "$NEWPAGES" | egrep -iv "$KEYWORDS_SATURN_EXCLUDE")
  URANUS=$(egrep -i "$KEYWORDS_URANUS" "$NEWPAGES" | egrep -iv "$KEYWORDS_URANUS_EXCLUDE")
  NEPTUNE=$(egrep -i "$KEYWORDS_NEPTUNE" "$NEWPAGES" | egrep -iv "$KEYWORDS_NEPTUNE_EXCLUDE")
  PLANETS=$(egrep -i "$KEYWORDS_PLANET" "$NEWPAGES" | egrep -iv "$KEYWORDS_PLANET_EXCLUDE")

  categorize "MERCURY" "Mercury"
  categorize "VENUS" "Venus"
  categorize "EARTH" "Earth"
  categorize "MARS" "Mars"
  categorize "JUPITER" "Jupiter"
  categorize "SATURN" "Saturn"
  categorize "URANUS" "Uranus"
  categorize "NEPTUNE" "Neptune"
  categorize "PLANETS" "Planets"

  debug_end "Planets"

fi