#!/bin/bash

cat newpages.txt | egrep -i '[0-9]{1,} is what percent of [0-9]{1,}' >> Percentages.txt
cat newpages.txt | egrep -i '\$[0-9]{1,} is what percent of \$[0-9]{1,}' >> Percentages.txt
cat newpages.txt | egrep -i '\$[0-9]{1,}\.[0-9]{1,} is what percent of \$[0-9]{1,}\.[0-9]{1,}' >> Percentages.txt


PERCENTAGES=`stat --print=%s Percentages.txt`

if [ $PERCENTAGES -ne 0 ];
then
  ./catscripts/Math/Percentages/catPercentages.sh
fi

rm Percentages.txt