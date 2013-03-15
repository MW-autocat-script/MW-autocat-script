#!/bin/bash

egrep -i 'New(| )Mexico|New(| )Mexican' newpages.txt >> NewMexico.txt

NEWMEXICO=`stat --print=%s NewMexico.txt`

if [ $NEWMEXICO -ne 0 ];
then
  export CATFILE="NewMexico.txt"
  export CATNAME="New Mexico"
  $CATEGORIZE
fi

rm NewMexico.txt