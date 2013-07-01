#!/bin/bash

KEYWORDS_SOUTHAFRICA="South(| )Africa"
KEYWORDS_NELSONMANDELA="Mandela"

egrep -i "$KEYWORDS_SOUTHAFRICA" newpages.txt | egrep -iv "$KEYWORDS_NELSONMANDELA" >> SouthAfrica.txt
egrep -i "$KEYWORDS_NELSONMANDELA" newpages.txt >> NelsonMandela.txt

SOUTHAFRICA=`stat --print=%s SouthAfrica.txt`
MANDELA=`stat --print=%s NelsonMandela.txt`

if [ $SOUTHAFRICA -ne 0 ];
then
  export CATFILE="SouthAfrica.txt"
  export CATNAME="South Africa"
  $CATEGORIZE
fi

if [ $MANDELA -ne 0 ];
then
  export CATFILE="NelsonMandela.txt"
  export CATNAME="Nelson Mandela"
  $CATEGORIZE
fi

rm SouthAfrica.txt
rm NelsonMandela.txt