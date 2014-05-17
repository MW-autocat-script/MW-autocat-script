#!/bin/bash

egrep -i '[0-9]{1,} is what percent of [0-9]{1,}' newpages.txt >> Percentages.txt
egrep -i '\$[0-9]{1,} is what percent of \$[0-9]{1,}' newpages.txt >> Percentages.txt
egrep -i '\$[0-9]{1,}\.[0-9]{1,} is what percent of \$[0-9]{1,}\.[0-9]{1,}' newpages.txt >> Percentages.txt
egrep -i '^What( is|s) [0-9]{1,}(| )% of [0-9]{1,}' newpages.txt >> Percentages.txt
egrep -i 'What percent of [0-9]{1,} is [0-9]{1,}' newpages.txt >> Percentages.txt


PERCENTAGES=$(stat --print=%s Percentages.txt)

if [ $PERCENTAGES -ne 0 ];
then
  export CATFILE="Percentages.txt"
  export CATNAME="Percentages"
  $CATEGORIZE
fi

rm Percentages.txt