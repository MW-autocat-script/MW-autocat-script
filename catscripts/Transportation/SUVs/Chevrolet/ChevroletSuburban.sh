#!/bin/bash

egrep -i 'Chev(y|rolet)(| )Suburban|[0-9]{2,}(| )Suburban' newpages.txt >> Suburban.txt

SUBURBAN=`stat --print=%s Suburban.txt`

if [ $SUBURBAN -ne 0 ];
then
  export CATFILE="Suburban.txt"
  export CATNAME="Chevrolet Suburban"
  $CATEGORIZE
fi

rm Suburban.txt