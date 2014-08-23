#!/bin/bash

KEYWORDS_INVENTORS="Invent(e|o)r(|s)\b"
KEYWORDS_INVENTORS_OTHER="Ralph(| )(|H(\.|))(| )Baer|Louis(| )Braille" #These are inventors who are notable enough to have Wikipedia articles but do not yet have enough questions about them to warrant their own category
KEYWORDS_BABBAGE="Babbage"
KEYWORDS_BENZ="Karl Benz"
KEYWORDS_ALEXANDERBELL="Alex(|ander)(| )(|Graham|G\.)(| )Bell"
KEYWORDS_BENFRANKLIN="Ben(|jamin)(| )Franklin"
KEYWORDS_GEORGEWASHINGTONCARVER="George(| )(|Washington)(| )Carver"
KEYWORDS_DAVINCI="da(| )vinci"
KEYWORDS_EDISON="Edison"
KEYWORDS_TESLA="Tesla"
KEYWORDS_TESLA_EXCLUDE="Fallout(| )3|Brotherhood(| )of(| )Steel|Tesla(| )Roadster|Tesla(| )Motors"
KEYWORDS_ELIWHITNEY="Eli(| )Whitney"
KEYWORDS_INVENTORS_EXCLUDE="$KEYWORDS_ALEXANDERBELL|$KEYWORDS_BABBAGE|$KEYWORDS_BENFRANKLIN|$KEYWORDS_BENZ|$KEYWORDS_DAVINCI|$KEYWORDS_EDISON|$KEYWORDS_ELIWHITNEY|$KEYWORDS_GEORGEWASHINGTONCARVER|$KEYWORDS_TESLA"
KEYWORDS_INVENTORS_ALL="$KEYWORDS_INVENTORS|$KEYWORDS_INVENTORS_EXCLUDE|$KEYWORDS_INVENTORS_OTHER"

if [ "$1" == "" ]; #Normal operation
then

  debug_start "Inventors"

  INVENTORS="$(egrep -i "$KEYWORDS_INVENTORS|$KEYWORDS_INVENTORS_OTHER" "$NEWPAGES" | egrep -iv "$KEYWORDS_INVENTORS_EXCLUDE")"
  BABBAGE="$(egrep -i "$KEYWORDS_BABBAGE" "$NEWPAGES")"
  BELL="$(egrep -i "$KEYWORDS_ALEXANDERBELL" "$NEWPAGES")"
  BENZ="$(egrep -i "$KEYWORDS_BENZ" "$NEWPAGES")"
  FRANKLIN="$(egrep -i "$KEYWORDS_BENFRANKLIN" "$NEWPAGES")"
  CARVER="$(egrep -i "$KEYWORDS_GEORGEWASHINGTONCARVER" "$NEWPAGES")"
  DAVINCI="$(egrep -i "$KEYWORDS_DAVINCI" "$NEWPAGES")"
  EDISON="$(egrep -i "$KEYWORDS_EDISON" "$NEWPAGES")"
  TESLA="$(egrep -i "$KEYWORDS_TESLA" "$NEWPAGES" | egrep -iv "$KEYWORDS_TESLA_EXCLUDE")"
  WHITNEY="$(egrep -i "$KEYWORDS_ELIWHITNEY" "$NEWPAGES")"

  categorize "INVENTORS" "Inventors"
  categorize "BABBAGE" "Charles Babbage"
  categorize "BELL" "Alexander Graham Bell"
  categorize "BENZ" "Karl Benz"
  categorize "FRANKLIN" "Benjamin Franklin"
  categorize "CARVER" "George Washington Carver"
  categorize "DAVINCI" "Leonardo da Vinci"
  categorize "EDISON" "Thomas Edison"
  categorize "TESLA" "Nikola Tesla"
  categorize "WHITNEY" "Eli Whitney"

  debug_end "Inventors"

fi