#!/bin/bash

egrep -i 'Judaism|Jewish|Yom Kippur|Rosh Hashana|Rosh Hashanah|\bTorah|Hanukkah|Chanukah|Chanukkah|Chanuka' newpages.txt >> Judaism.txt

JUDAISM=`stat --print=%s Judaism.txt`

if [ $JUDAISM -ne 0 ];
then
  export CATFILE="Judaism.txt"
  export CATNAME="Judaism"
  $CATEGORIZE
fi

rm Judaism.txt