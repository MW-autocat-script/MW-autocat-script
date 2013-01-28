#!/bin/bash

egrep -i '(|plane) geometr(y|ic)|polygon|(obtuse|acute|right) angle|isosceles|equilateral|triangle|square\b|rectangle|trapezoid|pentagon|tor(us|oid)|rhomb(us|oid)|hexagon|sexagon|septagon|octagon|nonagon|(|do)decagon|dodecahedron|AAA postulate|SAS postulate|pythagorean theorem|\bpi\b|π|Euclid' newpages.txt | egrep -iv "punnett|root| inc(|\.)\b|squaresoft|square number|bermuda triangle|Square Enix|town square|St\. .+ Square|Trafalgar Square|Raspberry Pi|Parliament Square|Red Square|Tiananmen Square|square danc(e|ing)|St\. Mark's Square|piñata|square deal" | egrep -v 'Pentagon' >> Geometry.txt

GEOMETRY=`stat --print=%s Geometry.txt`

if [ $GEOMETRY -ne 0 ];
then
  export CATFILE="Geometry.txt"
  export CATNAME="Geometry"
  ./catscripts/Categorize.sh
fi

rm Geometry.txt
