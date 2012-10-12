#!/bin/bash

cat newpages.txt | egrep -i '(|plane) geometr(y|ic)|polygon|(obtuse|acute|right) angle|isosceles|equilateral|triangle|square\b|rectangle|trapezoid|pentagon|tor(us|oid)|rhomb(us|oid)|hexagon|sexagon|septagon|octagon|nonagon|(|do)decagon|dodecahedron|AAA postulate|SAS postulate|pythagorean theorem|\bpi\b|π|Euclid' | egrep -iv 'punnett|root| inc(|\.)\b|squaresoft' >> Geometry.txt

GEOMETRY=`stat --print=%s Geometry.txt`

if [ $GEOMETRY -ne 0 ];
then
  ./catscripts/Math/Geometry/catGeometry.sh
fi

rm Geometry.txt
