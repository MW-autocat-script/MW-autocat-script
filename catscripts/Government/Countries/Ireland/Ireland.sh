#!/bin/bash

egrep -i 'Ireland' newpages.txt | egrep -iv 'Northern Ireland' >> Ireland.txt

IRELAND=`stat --print=%s Ireland`

if [ $IRELAND -ne 0 ];
then
  export CATFILE="Ireland.txt"
  export CATNAME="Republic of Ireland"
  $CATEGORIZE
fi

rm Ireland.txt