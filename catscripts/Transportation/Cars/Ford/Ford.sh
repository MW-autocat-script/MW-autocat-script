#!/bin/bash

egrep -i 'Ford Motor Company' newpages.txt >> Ford.txt
egrep -i 'Ford Taurus|[0-9]{2,4} Taurus' newpages.txt >> FordTaurus.txt
egrep -i 'Ford Escort|[0-9]{2,4} Escort' newpages.txt >> FordEscort.txt
egrep -i 'Ford Focus|[0-9]{2,4} Focus' newpages.txt >> FordFocus.txt
egrep -i 'Ford Mustang|[0-9]{2,4} Mustang' newpages.txt >> FordMustang.txt
egrep -i 'Ford Contour|[0-9]{2,4} Contour' newpages.txt >> FordContour.txt
#egrep -i 'Mondeo' newpages.txt >> Ford.txt #No category exists and currently insufficient number of questions to create

FORD=`stat --print=%s Ford.txt`
TAURUS=`stat --print=%s FordTaurus.txt`
ESCORT=`stat --print=%s FordEscort.txt`
FOCUS=`stat --print=%s FordFocus.txt`
MUSTANG=`stat --print=%s FordMustang.txt`
CONTOUR=`stat --print=%s FordContour.txt`
#MONDEO=`stat --print=%s FordMondeo.txt`

if [ $FORD -ne 0 ];
then
  export CATFILE="Ford.txt"
  export CATNAME="Ford"
  $CATEGORIZE
fi

if [ $TAURUS -ne 0 ];
then
  export CATFILE="FordTaurus.txt"
  export CATNAME="Ford Taurus"
  $CATEGORIZE
fi

if [ $ESCORT -ne 0 ];
then
  export CATFILE="FordEscort.txt"
  export CATNAME="Ford Escort"
  $CATEGORIZE
fi

if [ $FOCUS -ne 0 ];
then
  export CATFILE="FordFocus.txt"
  export CATNAME="Ford Focus"
  $CATEGORIZE
fi

if [ $MUSTANG -ne 0 ];
then
  export CATFILE="FordMustang.txt"
  export CATNAME="Ford Mustang"
  $CATEGORIZE
fi

if [ $CONTOUR -ne 0 ];
then
  export CATFILE="FordContour.txt"
  export CATNAME="Ford Contour"
  $CATEGORIZE
fi

#if [ $MONDEO -ne 0 ];
#then
#  export CATFILE="FordMondeo.txt"
#  export CATNAME="Ford Mondeo"
#  $CATEGORIZE
#fi

rm Ford.txt
rm FordContour.txt
rm FordEscort.txt
rm FordFocus.txt
rm FordMustang.txt
rm FordTaurus.txt
