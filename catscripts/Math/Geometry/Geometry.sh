#!/bin/bash
#Warning - the regex \bpi\b will fail on words with non-ASCII characters, such as piñata

KEYWORDS_GEOMETRY="(|plane)(| )geometr(y|ic)|polygon|(obtuse|acute|right)(| )angle|isosceles|equilateral|triangle|square\b|rectangle|trapezoid|pentagon|tor(us|oid)|rhomb(us|oid)|hexagon|sexagon|septagon|octagon|nonagon|(|do)decagon|dodecahedron|AAA(| )postulate|SAS(| )postulate|pythagorean(| )theorem|\bpi( |$)|π|Euclid"
KEYWORDS_GEOMETRY_EXCLUDE="punnett|root| inc(|\.)\b|squaresoft|square number|bermuda triangle|Square Enix|town square|St(|.) .+ Square|Trafalgar Square|Raspberry Pi|Parliament Square|Red Square|Tiananmen Square|square danc(e|ing)|piñata|square deal|chess|Rune(| )Scape"
KEYWORDS_GEOMETRY_EXCLUDE_CASESENSITIVE="Pentagon"

if [ "$1" == "" ];
then
  
  debug_start "Geometry"

  GEOMETRY=$(egrep -i "$KEYWORDS_GEOMETRY" "$NEWPAGES" | egrep -iv "$KEYWORDS_GEOMETRY_EXCLUDE" | egrep -v "$KEYWORDS_GEOMETRY_EXCLUDE_CASESENSITIVE")

  categorize "GEOMETRY" "Geometry"

  debug_end "Geometry"

fi
